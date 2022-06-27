import 'package:copypaste/features/drawing/domain/entities/sp_stroke.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class SPStrokeModel extends Equatable {
  final int id;
  final double size;
  final int color;
  final bool isComplete;
  final double thinning;
  final double smoothing;
  final double streamline;
  final double taperStart;
  final double taperEnd;
  final bool capStart;
  final bool capEnd;
  final bool simulatePressure;

  const SPStrokeModel({
    required this.id,
    required this.size,
    required this.color,
    required this.isComplete,
    required this.thinning,
    required this.smoothing,
    required this.streamline,
    required this.taperStart,
    required this.taperEnd,
    required this.capStart,
    required this.capEnd,
    required this.simulatePressure,
  });

  @override
  List<Object?> get props => [
        id,
        size,
        color,
        isComplete,
        thinning,
        smoothing,
        streamline,
        taperStart,
        taperEnd,
        capStart,
        capEnd,
        simulatePressure,
      ];

  /// Converts to the domain layer. Note that we are lacking the
  SPStroke toDomain() {
    return SPStroke(
      id: id,
      size: size,
      color: Color(color),
      thinning: thinning,
      smoothing: smoothing,
      streamline: streamline,
      taperStart: taperStart,
      taperEnd: taperEnd,
      capStart: capStart,
      capEnd: capEnd,
      simulatePressure: simulatePressure,
      isComplete: isComplete,
    );
  }

  /// Converts from the domain layer
  static SPStrokeModel fromDomain(SPStroke stroke) {
    return SPStrokeModel(
      id: stroke.id,
      size: stroke.size,
      color: stroke.color.value,
      thinning: stroke.thinning,
      smoothing: stroke.smoothing,
      streamline: stroke.streamline,
      taperStart: stroke.taperStart,
      taperEnd: stroke.taperEnd,
      capStart: stroke.capStart,
      capEnd: stroke.capEnd,
      simulatePressure: stroke.simulatePressure,
      isComplete: stroke.isComplete,
    );
  }

  /// Converts to Json
  Map<String, Object?> toJson() {
    return {
      'id': id,
      'size': size,
      'color': color,
      'thinning': thinning,
      'smoothing': smoothing,
      'streamline': streamline,
      'taperStart': taperStart,
      'taperEnd': taperEnd,
      'capStart': capStart,
      'capEnd': capEnd,
      'simulatePressure': simulatePressure,
      'isComplete': isComplete,
    };
  }

  /// Converts from json
  static SPStrokeModel fromJson(Map<String, dynamic> json) {
    return SPStrokeModel(
      id: json['id'],
      size: json['size'],
      color: json['color'],
      isComplete: json['isComplete'],
      thinning: json['thinning'],
      smoothing: json['smoothing'],
      streamline: json['streamline'],
      taperStart: json['taperStart'],
      taperEnd: json['taperEnd'],
      capStart: json['capStart'],
      capEnd: json['capEnd'],
      simulatePressure: json['simulatePressure'],
    );
  }
}
