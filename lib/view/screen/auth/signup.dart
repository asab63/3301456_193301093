import 'package:ahmet_usta/controller/signup_controller.dart';
import 'package:ahmet_usta/core/constant/color.dart';
import 'package:ahmet_usta/core/functions/exitappalert.dart';
import 'package:ahmet_usta/core/functions/validinput.dart';
import 'package:ahmet_usta/view/screen/auth/textaslink.dart';
import 'package:ahmet_usta/view/widget/auth/custombuttonauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtextbodyauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtextformauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImp controller = Get.put(SignupControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.primaryColor,
        elevation: 0.0,
        title: Text('ÜYE OL', style: Theme.of(context).textTheme.titleLarge),
      ),
      body:  WillPopScope( //exit button icin
        onWillPop: alerExitApp,
       child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                const SizedBox(height: 25),
                const CustomTextTitleAuth(text: "HOŞGELDİNİZ"),
                const SizedBox(height: 20),
                const CustomTextBodyAuth(
                    text: "E-Postanız Ve Şifrenizle Hesap Oluşturun"),
                const SizedBox(height: 40),
                CustomTextFormAuth(
                  valid: (val){
                     return validInput(val!, 5, 100, "Kullanıcı adı");
                  },
                  mycontroller: controller.username,
                  hintText: "Kullanıcı adınızı giriniz",
                  labeltext: "Kullanıcı adı",
                  iconData: Icons.person_outlined,
                  //mycontroller: mycontroller
                ),
                const SizedBox(height: 25),
                CustomTextFormAuth(
                  valid: (val){
                    return validInput(val!, 5, 100, "email");
                  },
                  mycontroller: controller.email,
                  hintText: "E-postanızı giriniz",
                  labeltext: "Email",
                  iconData: Icons.email_outlined,
                  //mycontroller: mycontroller
                ),
                const SizedBox(height: 25),
                CustomTextFormAuth(
                  valid: (val){
                    return validInput(val!, 11, 11, "telefon");
                  },
                  mycontroller: controller.phone,
                  hintText: "Telefon numaranızı giriniz",
                  labeltext: "Telefon",
                  iconData: Icons.phone_android_outlined,
                  //mycontroller: mycontroller
                ),
                const SizedBox(height: 25),
                CustomTextFormAuth(
                  valid: (val){
                    return validInput(val!, 5, 30, "Şifre");
                  },
                  mycontroller: controller.password,
                  hintText: "Şifrenizi giriniz",
                  labeltext: "Şifre",
                  iconData: Icons.lock_outlined,
                  //mycontroller: mycontroller
                ),
                const SizedBox(height: 25),
                CustomButtonAuth(text: "ÜYE OL", onPressed: () {
                  controller.signup();
                }),
                const SizedBox(height: 30),
                TextAsLink(
                  textone: "Hesabın var mı?",
                  texttwo: " GİRİŞ YAP",
                  onTap: () {
                    controller.goTologin();
                  },
                )
              ],
            ),
          ))),
    );
  }
}
