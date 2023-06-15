import 'dart:io';
import 'package:ahmet_usta/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alerExitApp() {
  Get.defaultDialog(
      title: "Uyarı",
      titleStyle: TextStyle(color: AppColor.primaryColor),
      middleText: "Uygulamadan çıkmak istiyor musunuz?",
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColor, // Background color
            ),
            onPressed: () {
              exit(0);
            },
            child: const Text("EVET")),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.gray, // Background color
            ),
            onPressed: () {
              Get.back();
            },
            child: const Text("HAYIR")),
      ]);
  return Future.value(true);
}
