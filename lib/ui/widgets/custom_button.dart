import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  const CustomButton(
      {super.key,
      required this.title,
      this.width = double.infinity,
      required this.onPressed,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: 55,
      width: width,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius))),
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          )),
    );
  }
}
