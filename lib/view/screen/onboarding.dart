import 'package:ahmet_usta/controller/onboarding_controller.dart';
import 'package:ahmet_usta/view/widget/onboarding/customButton.dart';
import 'package:ahmet_usta/view/widget/onboarding/customSlider.dart';
import 'package:ahmet_usta/view/widget/onboarding/dotController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
    Widget build(BuildContext context) {
      Get.put(OnBoardingControllerImp());
      return Scaffold(
        body: SafeArea(
          child: Column(children: [ 
           const Expanded(
            flex: 3,
            child: CostumSliderOnBoarding(),
           ),
           Expanded(
            flex: 1,
            child :  Column(
              children: const [  
               CostumDotControllerOnBoarding(),
               Spacer(flex: 2),
               CostumButtonOnBoarding(),
           ],
          ))
          ],)
        )
      );
    }
}