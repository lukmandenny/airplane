import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BonuPage extends StatelessWidget {
  const BonuPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        height: 211,
        width: 300,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image_card.png'),
            ),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                offset: Offset(0, 10),
                blurRadius: 50,
              )
            ]),
        child: Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'Kezia Anne Kezia Anne',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 6),
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'),
                    ),
                  ),
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
          ],
        ),
      ),
    );
  }
}
