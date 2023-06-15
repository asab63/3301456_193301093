import 'package:ahmet_usta/controller/login_controller.dart';
import 'package:ahmet_usta/core/constant/color.dart';
import 'package:ahmet_usta/core/functions/exitappalert.dart';
import 'package:ahmet_usta/core/functions/validinput.dart';
import 'package:ahmet_usta/view/screen/auth/textaslink.dart';
import 'package:ahmet_usta/view/widget/auth/custombuttonauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtextbodyauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtextformauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtexttitleauth.dart';
import 'package:ahmet_usta/view/widget/auth/logoauth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.primaryColor,
          elevation: 0.0,
          title:
              Text('Giriş Yap', style: Theme.of(context).textTheme.titleLarge),
        ),
        body: WillPopScope(
          onWillPop: alerExitApp,
          child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const LogoAuth(),
                    const SizedBox(height: 25),
                    const CustomTextTitleAuth(text: "HOŞGELDİNİZ"),
                    const SizedBox(height: 20),
                    const CustomTextBodyAuth(
                        text: "E-Postanız Ve Şifrenizle Giriş Yapın"),
                    const SizedBox(height: 50),
                    CustomTextFormAuth(
                      valid: (val) {
                        return validInput(val!, 5, 100, "email");
                      },
                      hintText: "E-postanızı giriniz",
                      labeltext: "Email",
                      iconData: Icons.email_outlined,
                      mycontroller: controller.email,
                    ),
                    const SizedBox(height: 25),
                    GetBuilder<LoginControllerImp>(
                      builder: (controller) => CustomTextFormAuth(
                        valid: (val) {
                          return validInput(val!, 5, 30, "password");
                        },
                        obscureText: controller.isshowpassword,
                        onTapIcon: () {
                          controller.showPassword();
                        },
                        hintText: "Şifrenizi giriniz",
                        labeltext: "Şifre",
                        iconData: Icons.lock_outlined,
                        mycontroller: controller.password,
                      ),
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      onTap: () {
                        controller.goToForgetPassword();
                      },
                      child: const Text(
                        "Şifremi Unuttum",
                        textAlign: TextAlign.end,
                        style: TextStyle(color: AppColor.gray, fontSize: 13),
                      ),
                    ),
                    CustomButtonAuth(
                        text: "GİRİŞ YAP",
                        onPressed: () async {
try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: "alaa@gmail.com",
    password: "alaa12345",
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}                        }),
                    const SizedBox(height: 30),
                    TextAsLink(
                      textone: "Hesabın yok mu?",
                      texttwo: "ÜYE OL",
                      onTap: () {
                        controller.goToSignup();
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
