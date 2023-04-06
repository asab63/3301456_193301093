import 'package:ahmet_usta/core/constant/color.dart';
import 'package:ahmet_usta/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CostumDotControllerOnBoarding extends StatelessWidget {
  const CostumDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                ...List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                    duration: const Duration(milliseconds: 900),
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(10)

                    ),
                    ))
                ],
               );
  }
}