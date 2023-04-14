import 'package:ahmet_usta/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerfiyCode();
  goToAnasCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;
  @override
  checkEmail() {}

  @override
  goToVerfiyCode() {
    Get.toNamed(AppRoute.verfiyCode);
  }

  @override
  goToAnasCode() { //edit this name
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
}