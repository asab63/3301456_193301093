import 'package:ahmet_usta/core/constant/routes.dart';
import 'package:ahmet_usta/view/screen/auth/forgetpassword.dart';
import 'package:ahmet_usta/view/screen/auth/homescreen.dart';
import 'package:ahmet_usta/view/screen/auth/login.dart';
import 'package:ahmet_usta/view/screen/auth/resetpassword.dart';
import 'package:ahmet_usta/view/screen/auth/signup.dart';
import 'package:ahmet_usta/view/screen/auth/verfiycode.dart';
import 'package:ahmet_usta/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
  AppRoute.signup: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.onboarding: (context) => const OnBoarding(),
  AppRoute.homeScreen: (context) => const HomeScreen(),
};
