import 'package:automation/constants/string_constants.dart';
import 'package:automation/features/splash/bloc/splash_bloc.dart';
import 'package:automation/routing/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

///SplashScreenView - Display Splash Screen View of the app
class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    ///Navigation Event called via SplashBloc
    context.read<SplashBloc>().add(SplashNavigateEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashSuccess) {
            context.goNamed(RoutingConstants.home);
          }
          if (state is SplashFailure) {
            // ToastUtils.showFailed(message: StringConstants.somethingWentWrong);
          }
        },
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.paddingOf(context).top,
            bottom: MediaQuery.paddingOf(context).bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Splash Text
              Expanded(
                child: Center(
                  child: Text(StringConstants.appName.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///By Text
                  Text(StringConstants.by.toUpperCase(), style: const TextStyle(fontSize: 14)),
                  const SizedBox(width: 10),

                  ///Developer Name Text
                  Text(StringConstants.developerName.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
