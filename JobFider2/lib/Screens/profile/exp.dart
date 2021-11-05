import 'package:flutter/material.dart';
import 'package:job/constants.dart';

class expCart extends StatelessWidget {
  final String companyName, positionName, dateWorkin, dateWorkout, countTime;

  const expCart(
      {Key? key,
      required this.companyName,
      required this.positionName,
      required this.dateWorkin,
      required this.dateWorkout,
      required this.countTime})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 320,
      //margin: EdgeInsets.only(right: 15.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.grey[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            positionName,
            style: kSubtitleStyle.copyWith(
                color: kBlackAccent,
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: companyName,
                  style: kTitleStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: dateWorkin,
                  style: kTitleStyle,
                ),
                TextSpan(
                  text: "  •  ",
                  style: kTitleStyle,
                ),
                TextSpan(
                  text: dateWorkout,
                  style: kTitleStyle,
                ),
                TextSpan(
                  text: countTime,
                  style: kTitleStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
