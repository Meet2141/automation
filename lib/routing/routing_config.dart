import 'package:automation/features/home/home_screen.dart';
import 'package:automation/features/splash/splash_screen.dart';
import 'package:automation/routing/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///RoutingConfig - Handle Routing of application
class RoutingConfig {
  static GoRouter router = GoRouter(
    initialLocation: RoutingConstants.initial,
    routes: <GoRoute>[
      GoRoute(
        path: RoutingConstants.initial,
        name: RoutingConstants.splash,
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: RoutingConstants.initial + RoutingConstants.home,
        name: RoutingConstants.home,
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
    ],
    observers: <NavigatorObserver>[],
  );
}
