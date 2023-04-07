import 'package:ahmet_usta/core/constant/routes.dart';
import 'package:ahmet_usta/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChabged(int index);
}
class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0 ; 
  @override
  next() {
    currentPage++;
    if(currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoute.login);

    } else {
    pageController.animateToPage(currentPage,
    duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
  }}

  @override
  onPageChabged(int index) {
    currentPage = index ;
    update();
      }

@override
  void onInit() {
pageController = PageController() ;
    super.onInit();
  }
}