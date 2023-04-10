import 'package:ahmet_usta/view/widget/auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Giriş Yap', style : Theme.of(context).textTheme.bodyLarge),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 25),
          Text("HOŞGELDİNİZ",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayMedium),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25) ,
            child: Text("E-Postanız Ve Şifrenizle Giriş Yapın Veya Sosyal Medya İle Devam Edin",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,),
          ),
         const SizedBox(height: 65),
         const CustomTextFormAuth(
          hintText: "E-postanızı giriniz",
          labeltext: "Email",
          iconData: Icons.email_outlined,
          //mycontroller: mycontroller
          ),
          const SizedBox(height: 25),
          const CustomTextFormAuth(
          hintText: "Şifrenizi giriniz",
          labeltext: "Şifre",
          iconData: Icons.lock_outlined,
          //mycontroller: mycontroller
          ),
         ],
        )
      ),
    );
  }
}