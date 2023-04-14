import 'package:ahmet_usta/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signup();
  goTologin();
}

class SignupControllerImp extends SignupController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  @override
  signup() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.toNamed(AppRoute.verfiyCode);
    } else {
      print("geçerli değil");
    }
  }

  @override
  goTologin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
}
