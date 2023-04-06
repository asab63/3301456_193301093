import 'package:ahmet_usta/controller/onboarding_controller.dart';
import 'package:ahmet_usta/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CostumButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CostumButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: const EdgeInsets.only(bottom: 70),
                height: 45,
                child: MaterialButton(
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
                  textColor: Colors.white,
                onPressed: () {
                  controller.next();
                }, 
               color: AppColor.primaryColor,
               child: Text("DEVAM")),
               );
  }
}