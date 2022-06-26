import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:copypaste/features/authentication/domain/entities/sp_user.dart';
import 'package:copypaste/features/authentication/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:copypaste/features/file_management/data/models/sp_drawing_model.dart';
import 'package:copypaste/features/file_management/domain/entities/sp_drawing.dart';
import 'package:copypaste/core/errors_and_failures/failures/database_failure.dart';
import 'package:copypaste/features/file_management/domain/repositories/i_file_management_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:copypaste/core/extensions/firebase/firebase_firestore_extension.dart';

@LazySingleton(as: IFileManagementRepository)
class FirebaseFileManagementRepositoryImpl
    implements IFileManagementRepository {
  final FirebaseFirestore firestore;
  final AuthBloc authBloc;

  FirebaseFileManagementRepositoryImpl(this.firestore, this.authBloc);

  Future<Either<DatabaseFailure, SPUser>> _getCurrentUserOrFailure() async {
    final userOption = await authBloc.getUserOption();
    return userOption.fold(
      () => left(const DatabaseFailure.userHasNotSignedIn()),
      (user) => right(user),
    );
  }

  @override
  Future<Either<DatabaseFailure, List<SPDrawing>>> loadAllDrawings() async {
    final currentUserOrFailure = await _getCurrentUserOrFailure();
    return await currentUserOrFailure.fold(
      (failure) async => left(failure),
      (user) async {
        // get the drawings list collection
        final drawingsReference = firestore.getDrawingsListCollection(user);

        // get the documents from the drawings list
        final QuerySnapshot snapshot = await drawingsReference.get();
        return right(
          snapshot.docs
              .map(
                // will cast the model to the entity
                // automatically
                (entry) => SPDrawingModel.fromJson(
                  entry.data() as Map<String, Object?>,
                ),
              )
              .toList(),
        );
      },
    );
  }

  @override
  Future<Either<DatabaseFailure, Unit>> saveDrawing(SPDrawing drawing) async {
    final currentUserOrFailure = await _getCurrentUserOrFailure();
    final SPDrawingModel drawingModel = SPDrawingModel.fromDomain(drawing);
    return await currentUserOrFailure.fold(
      (failure) async => left(failure),
      (user) async {
        final drawingReference =
            firestore.getDrawingReference(user, drawingModel);
        Object? errorOrNull;
        try {
          drawingReference.set(drawingModel.toJson());
          return right(unit);
        } on FirebaseException catch (e) {
          throw ErrorDescription(e.code);
        }
      },
    );
  }
}
