import 'package:ahmet_usta/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignup();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  bool isshowpassword = true;

  showPassword (){
    isshowpassword = isshowpassword == true ? false :true;
    update();
  }
  @override
  login() {}

  @override
  goToSignup() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
