import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText; // لانه كل تكست وايكون مختلف عن الاخر
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  const CustomTextFormAuth(
      {super.key,
      required this.hintText,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14),
        floatingLabelBehavior:
            FloatingLabelBehavior.always, //email kelimsei sabitliyor
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 35),
        label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(labeltext)),
        suffixIcon: Icon(iconData),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30) //karenin koseleri icin
            ),
      ),
    );
  }
}
