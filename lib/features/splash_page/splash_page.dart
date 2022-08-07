import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/injections/injection.dart';
import '../../core/routing/app_router.dart';
import '../authentication/presentation/bloc/auth_bloc/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          return const Center(
            child: Text(
              "SketchPaste",
              style: TextStyle(
                color: Colors.white,
                fontSize: 74,
              ),
            ),
          );
        },
        listener: (context, state) {
          if (state is UserSignedIn) {
            getIt<AppRouter>().replace(const DrawingRoute());
          } else {
            getIt<AppRouter>().replace(AuthenticationRoute());
          }
        },
      ),
    );
  }
}
