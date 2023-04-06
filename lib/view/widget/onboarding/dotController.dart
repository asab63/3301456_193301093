import 'package:ahmet_usta/controller/onboarding_controller.dart';
import 'package:ahmet_usta/core/constant/color.dart';
import 'package:ahmet_usta/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CostumDotControllerOnBoarding extends StatelessWidget {
  const CostumDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller)=>Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ...List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                    duration: const Duration(milliseconds: 900),
                    width: controller.currentPage == index ? 18 : 5,
                    height: 6,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    ))
                ],
               ));

  }
}