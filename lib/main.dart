import 'package:ahmet_usta/core/constant/color.dart';
import 'package:ahmet_usta/routes.dart';
import 'package:ahmet_usta/view/screen/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_authdart ;

void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
