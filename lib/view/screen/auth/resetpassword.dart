import 'package:ahmet_usta/view/widget/auth/custombuttonauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtextbodyauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    //ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Şifremi Unuttum',
            style: Theme.of(context).textTheme.bodyLarge),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(
            children: [
              const SizedBox(height: 25),
              const CustomTextTitleAuth(text: "E-Postanı kontrol et"),
              const SizedBox(height: 20),
              const CustomTextBodyAuth(
                  text: "E-Postanız Ve Şifrenizle Hesap Oluşturun"),
              const SizedBox(height: 40),
              // CustomTextFormAuth(
              //   mycontroller: controller.email,
              //   hintText: "E-postanızı giriniz",
              //   labeltext: "Email",
              //   iconData: Icons.email_outlined,
              //   //mycontroller: mycontroller
              // ),
              const SizedBox(height: 25),
              CustomButtonAuth(text: "kontrol et", onPressed: () {}),
              const SizedBox(height: 30),
            ],
          )),
    );
  }
}
