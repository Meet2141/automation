import 'package:automation/constants/string_constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    appState.package(
      () {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          StringConstants.appName.toUpperCase(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleText(title: 'Build: '),
              valueText(value: appState.packageInfo?.buildNumber ?? '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleText(title: 'Version: '),
              valueText(value: appState.packageInfo?.version ?? '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleText(title: 'App Name: '),
              valueText(value: appState.packageInfo?.appName ?? '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleText(title: 'Package: '),
              valueText(value: appState.packageInfo?.packageName ?? '-'),
            ],
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget titleText({required String title}) {
    return Text(
      title,
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey.withOpacity(0.8)),
    );
  }

  Widget valueText({required String value}) {
    return Text(
      value,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
    );
  }
}
