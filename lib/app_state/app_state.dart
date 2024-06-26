import 'package:package_info_plus/package_info_plus.dart';

class AppState {
  AppState._internal();

  static final AppState _instance = AppState._internal();

  factory AppState() {
    return _instance;
  }

  ///Data
  bool isLogin = true;

  PackageInfo? packageInfo;

  Future<void> package(Function() call) async {
    packageInfo = await PackageInfo.fromPlatform();
    call.call();
  }
}
