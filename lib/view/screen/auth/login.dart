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
      body: Container(child: Text(".."),),
    );
  }
}