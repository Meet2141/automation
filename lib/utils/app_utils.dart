import 'package:flutter/material.dart';

class AppUtils {
  static Future futureDelay({int? seconds, required VoidCallback afterDelay}) async {
    await Future.delayed(Duration(seconds: seconds ?? 2)).then((value) {
      afterDelay();
    });
  }
}

extension SizedBoxInt on int {
  Widget get sw => SizedBox(
        width: double.parse(toString()),
      );

  Widget get sh => SizedBox(
        height: double.parse(toString()),
      );
}
