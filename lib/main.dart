
import 'package:dashboardscreen/view/dashboard/dashboard.dart';
import 'package:dashboardscreen/view/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              theme: ThemeData(fontFamily: 'avenir'),
              debugShowCheckedModeBanner: false,
              // locale: DevicePreview.locale(context), // Add the locale here
              // builder: DevicePreview.appBuilder, // Add the builder here
              home: DashboardPage(),
            );
          },
        );
      },
    );
  }
}
