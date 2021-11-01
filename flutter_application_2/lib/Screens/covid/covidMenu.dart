// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:job/constants.dart';

class covidMenu extends StatelessWidget {
  const covidMenu({
    Key? key,
    required this.text,
    required this.des,
    required this.press,
  }) : super(key: key);
  final String text, des;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Row(children: [
            Text(text,
                style: kSubtitleStyle.copyWith(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold)),
          ]),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(child: Text(des)),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          FlatButton(
            onPressed: press,
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: new LinearGradient(colors: [
                    Color.fromARGB(255, 255, 136, 34),
                    Color.fromARGB(255, 255, 177, 41)
                  ])),
              child: Text(
                "Khai báo",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
