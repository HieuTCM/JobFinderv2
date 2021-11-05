// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/covid/covidMenu.dart';
import 'package:job/Screens/covid/covidTest.dart';
import 'package:job/Screens/covid/covidVaccine.dart';

class covidBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        covidMenu(
            text: "Lịch sử xét nghiệm",
            des: "",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => covidTest()));
            }),
        covidMenu(
            text: "Tiêm chủng",
            des:
                "Nếu bạn đã tiêm vaccine hoặc là F0 đã khỏi bệnh, hãy khai báo để được ưu tiên duyệt đi làm.",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => covidVaccine()));
            })
      ],
    );
  }
}
