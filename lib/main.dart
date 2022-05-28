import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'core/injections/injection.dart';
import 'features/drawing/presentation/pages/drawing_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:copypaste/constants/routes.dart';
import 'package:copypaste/helpers/loading/loading_screen.dart';
import 'package:copypaste/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:copypaste/features/auth/presentation/bloc/auth_event.dart';
import 'package:copypaste/features/auth/presentation/bloc/auth_state.dart';
import 'package:copypaste/features/auth/firebase_auth_provider.dart';
import 'package:copypaste/features/auth/presentation/widgets/forgot_password_view.dart';
import 'package:copypaste/features/auth/presentation/widgets/login_view.dart';
// import 'package:copypaste/features/auth/presentation/widgets/notes/create_update_note_view.dart';
// import 'package:copypaste/features/auth/presentation/widgets/notes/notes_view.dart';
import 'package:copypaste/features/auth/presentation/widgets/register_view.dart';
import 'package:copypaste/features/auth/presentation/widgets/verify_email_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp(
    MaterialApp(
      title: 'CopyPaste',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(FirebaseAuthProvider()),
        child: const HomePage(),
      ),
      routes: {
        createOrUpdateDrawingRoute: (context) => const DrawingPage(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEventInitialize());
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.isLoading) {
          LoadingScreen().show(
            context: context,
            text: state.loadingText ?? 'Please wait a moment',
          );
        } else {
          LoadingScreen().hide();
        }
      },
      builder: (context, state) {
        if (state is AuthStateLoggedIn) {
          return const DrawingPage();
        } else if (state is AuthStateNeedsVerification) {
          return const VerifyEmailView();
        } else if (state is AuthStateLoggedOut) {
          return const LoginView();
        } else if (state is AuthStateForgotPassword) {
          return const ForgotPasswordView();
        } else if (state is AuthStateRegistering) {
          return const RegisterView();
        } else {
          return const Scaffold(
            body: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await configureInjection(Environment.prod);
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'CopyPaste',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const DrawingPage(),
//     );
//   }
// }
