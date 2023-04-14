import 'package:ahmet_usta/core/constant/color.dart';
import 'package:ahmet_usta/core/constant/imageasset.dart';
import 'package:ahmet_usta/core/functions/exitappalert.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.primaryColor,
          elevation: 0.0,
          title:
              Text('MENÜ', style: Theme.of(context).textTheme.titleLarge),
        ),
        body: WillPopScope(
          onWillPop: alerExitApp,
          child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              SizedBox(height: 20),
              Image.asset(AppImageAsset.menuDoner, height: 120,alignment: Alignment.bottomLeft,),
              SizedBox(height: 10),
              Image.asset(AppImageAsset.menuPizza, height: 120,alignment: Alignment.bottomLeft,),
              SizedBox(height: 10),
              Image.asset(AppImageAsset.menuBurger, height: 120,alignment: Alignment.bottomLeft,),
              SizedBox(height: 10),
              Image.asset(AppImageAsset.menuTavuk, height: 120,alignment: Alignment.bottomLeft,)
            ],
          ),

          ),
    ));
  }
}