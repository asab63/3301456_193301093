import 'package:ahmet_usta/core/constant/routes.dart';
import 'package:ahmet_usta/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

Map<String, Widget Function(BuildContext)> routes = {
 AppRoute.login : (context) => const Login()
};