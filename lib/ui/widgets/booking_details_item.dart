import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class BookingDetailsItem extends StatelessWidget {
  final String title;
  final String valurText;
  final Color valueColor;
  const BookingDetailsItem(
      {super.key,
      required this.title,
      required this.valurText,
      required this.valueColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_check.png',
                ),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle,
          ),
          Spacer(),
          Text(
            valurText,
            style: blackTextStyle.copyWith(
                fontWeight: semiBold, color: valueColor),
          )
        ],
      ),
    );
  }
}
