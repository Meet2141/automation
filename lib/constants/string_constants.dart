import 'package:automation/app_state/app_state.dart';

///StringConstants - Strings Constants are defined here
class StringConstants {
  static const appName = 'Automation';
  static const developerName = 'Meet Shah';
  static const by = 'by';
  static const home = 'Home';
  static const welcome = 'Welcome!';

  //Error
  static const requestTimedOut = 'Request timed out';
  static const serverError = 'Server error';
  static const connectTimedOut = 'Connect timed out';
  static const pleaseTryAgain = 'Please try again.';
  static const somethingWentWrong = 'Something Went Wrong';
  static const pleaseCheckInternet = 'Please Check Internet';
  static const internetConnectionLost = 'Internet connection lost. Please retry';
  static const errorMessage = 'Authentication failed, Please contact to admin for onBoarding!';
}

///Created typedef for Map<String, dynamic> (JSON File Type)
typedef JsonPayLoad = Map<String, dynamic>;

/// Global variable for AppState class
AppState appState = AppState();
