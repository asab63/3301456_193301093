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
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;

  bool isshowpassword = true;

  showPassword (){
    isshowpassword = isshowpassword == true ? false :true;
    update();
  }
  @override
  login() {
    var formdata = formstate.currentState;
    if(formdata!.validate()){
    Get.offNamed(AppRoute.homeScreen);
    }else {
      print("geçerli değil");
    }
  }

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
