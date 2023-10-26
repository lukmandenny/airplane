import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class DestinationTileNoContainer extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;
  final EdgeInsets margin;

  const DestinationTileNoContainer(
      {super.key,
      required this.name,
      required this.city,
      required this.imageUrl,
      this.rating = 0,
      this.margin = EdgeInsets.zero});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  city,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 24,
                height: 24,
                margin: EdgeInsets.only(right: 2),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/icon_star.png',
                    ),
                  ),
                ),
              ),
              Text(
                rating.toString(),
                style: blackTextStyle.copyWith(fontWeight: medium),
              ),
            ],
          )
        ],
      ),
    );
  }
}
