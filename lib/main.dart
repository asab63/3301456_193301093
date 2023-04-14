import 'package:ahmet_usta/core/constant/color.dart';
import 'package:ahmet_usta/routes.dart';
import 'package:ahmet_usta/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: AppColor.black),
          displayMedium: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: AppColor.black),
          bodyLarge: TextStyle(fontSize: 17, height: 2, color: AppColor.gray),
          titleLarge: TextStyle(color: Colors.white),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
