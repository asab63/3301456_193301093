import 'package:ahmet_usta/controller/onboarding_controller.dart';
import 'package:ahmet_usta/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CostumSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CostumSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChabged(val);
      },
            itemCount: onBoardingList.length,
            itemBuilder: (context , i) => Column( 
              children: [ 
               const SizedBox(height: 50),
                Image.asset(
                  onBoardingList[i].image!,
                width: 250,
                height: 250,
                fit: BoxFit.fill,
                  ), 
                const SizedBox(height: 34),
                Text(onBoardingList[i].title!,
                style : Theme.of(context).textTheme.displayLarge),
               const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child:Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge
                    ),
                )
              ],
            )
          );
  }
}