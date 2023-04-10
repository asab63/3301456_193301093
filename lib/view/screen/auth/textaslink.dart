import 'package:ahmet_usta/core/constant/color.dart';
import 'package:flutter/material.dart';

class TextAsLink extends StatelessWidget {
  final String textone;
  final String texttwo;
  final void Function()? onTap;
  const TextAsLink({
    super.key,
    required this.textone,
    required this.texttwo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textone,
          style: const TextStyle(color: AppColor.gray, fontSize: 15),
        ),
        InkWell(
            onTap: onTap,
            child: Text(texttwo,
                style: const TextStyle(
                    color: AppColor.primaryColor, fontWeight: FontWeight.bold)))
      ],
    );
  }
}
