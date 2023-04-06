import 'package:ahmet_usta/core/constant/color.dart';
import 'package:ahmet_usta/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class CostumSliderOnBoarding extends StatelessWidget {
  const CostumSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
            itemCount: onBoardingList.length,
            itemBuilder: (context , i) => Column( 
              children: [ 
               const SizedBox(height: 110),
                Image.asset(
                  onBoardingList[i].image!,
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,), 
                const SizedBox(height: 40),
                Text(onBoardingList[i].title!,
                style : const TextStyle(
                fontWeight: FontWeight.bold,fontSize: 30)),
               const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child:Text(
                    onBoardingList[i].body!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 17,height: 2, color: AppColor.gray)
                    ),
                )
              ],
            )
          );
  }
}