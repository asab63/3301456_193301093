import 'package:ahmet_usta/view/widget/auth/customtextbodyauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtextformauth.dart';
import 'package:ahmet_usta/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
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
        child: ListView(children: const [
        SizedBox(height: 25),
        CustomTextTitleAuth(text:"HOŞGELDİNİZ"),
        CustomTextBodyAuth(text: "E-Postanız Ve Şifrenizle Giriş Yapın Veya Sosyal Medya İle Devam Edin"),
        SizedBox(height: 65),
        CustomTextFormAuth(
          hintText: "E-postanızı giriniz",
          labeltext: "Email",
          iconData: Icons.email_outlined,
          //mycontroller: mycontroller
          ),
          SizedBox(height: 25),
          CustomTextFormAuth(
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