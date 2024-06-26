import 'package:automation/constants/string_constants.dart';
import 'package:automation/utils/app_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashNavigateEvent>((event, emit) async {
      if (appState.isLogin) {
        await AppUtils.futureDelay(afterDelay: () {
          emit(SplashSuccess());
        });
      } else {
        emit(SplashFailure());
      }
    });
  }
}
