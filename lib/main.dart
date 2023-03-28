import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Automation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Automation by Meet Shah'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PackageInfo? packageInfo;

  Future<void> package() async {
    packageInfo = await PackageInfo.fromPlatform();
  }

  @override
  void initState() {
    package();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleText(title: 'Build: '),
              valueText(value: packageInfo?.buildNumber ?? '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleText(title: 'Version: '),
              valueText(value: packageInfo?.version ?? '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleText(title: 'App Name: '),
              valueText(value: packageInfo?.appName ?? '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleText(title: 'Package: '),
              valueText(value: packageInfo?.packageName ?? '-'),
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
