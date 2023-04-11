import 'dart:io';
import 'package:ahmet_usta/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alerExitApp() {
  Get.defaultDialog(
      title: "Uyarı",
      middleText: "Uygulamadan çıkmak istiyor musunuz?",
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: const Text("EVET", style: TextStyle(color: AppColor.black))),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("HAYIR",
                style: TextStyle(color: AppColor.primaryColor))),
      ]);
  return Future.value(true);
}
