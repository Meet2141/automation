part of 'splash_bloc.dart';

sealed class SplashEvent {
  const SplashEvent();
}

class SplashNavigateEvent extends SplashEvent {}
