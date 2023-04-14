import 'package:ahmet_usta/controller/forgetpassword_controller.dart';
import 'package:ahmet_usta/core/constant/color.dart';
import 'package:ahmet_usta/view/widget/auth/custombuttonauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtextbodyauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtextformauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
        title: Text('Şifremi Unuttum',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              const SizedBox(height: 25),
              const CustomTextTitleAuth(text: "E-Postanı kontrol et"),
              const SizedBox(height: 20),
              const CustomTextBodyAuth(
                  text:
                      "Doğrulama kodunu almak için lütfen e-posta adresinizi yazınız"),
              const SizedBox(height: 40),
              CustomTextFormAuth(
                valid: (val){},
                mycontroller: controller.email,
                hintText: "E-postanızı giriniz",
                labeltext: "Email",
                iconData: Icons.email_outlined,
              ),
              const SizedBox(height: 25),
              CustomButtonAuth(
                  text: "kontrol et",
                  onPressed: () {
                    controller.goToVerfiyCode();
                  }),
            ],
          )),
    );
  }
}
