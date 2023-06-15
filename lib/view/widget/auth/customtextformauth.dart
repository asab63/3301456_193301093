import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText; 
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final bool? obscureText;
  final Function()? onTapIcon;
  final String? Function(String?) valid;
  const CustomTextFormAuth(
      {super.key,
      required this.hintText,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
       this.obscureText, this.onTapIcon, required this.valid});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      controller: mycontroller,
      obscureText: obscureText == null || obscureText == false ? false : true,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 14),
        floatingLabelBehavior:
            FloatingLabelBehavior.always, 
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 35),
        label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(labeltext)),
        suffixIcon: InkWell(child: Icon(iconData),onTap: onTapIcon),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30) //karenin koseleri icin
            ),
      ),
    );
  }
}
