import 'package:automation/features/splash/bloc/splash_bloc.dart';
import 'package:automation/features/splash/view/splash_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///SplashScreen - Display Splash Screen of the application
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(),
      child: const SplashScreenView(),
    );
  }
}
