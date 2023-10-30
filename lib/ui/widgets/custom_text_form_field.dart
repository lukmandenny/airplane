import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hint;
  final bool obscureText;
  final EdgeInsets margin;
  final TextEditingController controller;

  const CustomTextFormField(
      {super.key,
      required this.title,
      required this.hint,
      this.obscureText = false,
      this.margin = const EdgeInsets.only(bottom: 20),
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
                hintText: hint,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor, width: 3))),
          )
        ],
      ),
    );
  }
}
