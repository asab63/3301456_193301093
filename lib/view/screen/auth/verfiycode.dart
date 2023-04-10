import 'package:ahmet_usta/controller/forgetpassword_controller.dart';
import 'package:ahmet_usta/core/constant/color.dart';
import 'package:ahmet_usta/view/widget/auth/custombuttonauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtextbodyauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtextformauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
        elevation: 0.0,
        title: Text('Doğrulama Kodu',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              const SizedBox(height: 25),
              const CustomTextTitleAuth(text: "Kodu kontrol et"),
              const SizedBox(height: 20),
              const CustomTextBodyAuth(
                  text: "lütfen e-postanıza gönderilen rakam kodunu girin"),
              const SizedBox(height: 40),
              CustomTextFormAuth(
                mycontroller: controller.email,
                hintText: "E-postanızı giriniz",
                labeltext: "Email",
                iconData: Icons.email_outlined,
                //mycontroller: mycontroller
              ),
              const SizedBox(height: 25),
              CustomButtonAuth(text: "kontrol et", onPressed: () {}),
              const SizedBox(height: 30),
            ],
          )),
    );
  }
}
