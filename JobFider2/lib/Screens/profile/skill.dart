import 'package:flutter/material.dart';
import 'package:job/constants.dart';

class skillCart extends StatelessWidget {
  final String skill;

  const skillCart({Key? key, required this.skill}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 30,
      margin: EdgeInsets.only(right: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
      ),
      child: Text(
        skill,
        style: kSubtitleStyle.copyWith(
          color: kBlackAccent,
          fontSize: 12.0,
        ),
      ),
    );
  }
}
