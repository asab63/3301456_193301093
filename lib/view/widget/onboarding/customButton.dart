import 'package:ahmet_usta/core/constant/color.dart';
import 'package:flutter/material.dart';

class CostumButtonOnBoarding extends StatelessWidget {
  const CostumButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                margin: const EdgeInsets.only(bottom: 70),
                height: 45,
                child: MaterialButton(
                  padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 2),
                  textColor: Colors.white,
                onPressed: () {}, 
               color: AppColor.primaryColor,
               child: Text("DEVAM")),
               );
  }
}