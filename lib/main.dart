import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:management_asset/presentations/page/splash/view/splash_view.dart';
import 'package:management_asset/presentations/route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Management Asset',
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      getPages: GetXroutes.routes,
      initialRoute: SplashView.routeName,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
        child: child!
      ),
    );
  }
}
