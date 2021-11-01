// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:job/Screens/covid/covidBody.dart';
import 'package:job/Screens/edu/eduBody.dart';
import 'package:job/constants.dart';

class eduMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 160, 0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kBlack,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Thêm học vấn",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: eduBody(),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          onPressed: () {
            print(schooleNameCon.text);
            print(majorNameCon.text);
            print(valueCamketEdu);
            print(dateStringEdu1);
            print(dateStringEdu2);
          },
          // onPressed: () => Navigator.pop(context),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          textColor: Colors.white,
          padding: const EdgeInsets.all(0),
          child: Container(
            alignment: Alignment.center,
            height: 50.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: new LinearGradient(colors: [
                  Color.fromARGB(255, 255, 136, 34),
                  Color.fromARGB(255, 255, 177, 41)
                ])),
            padding: const EdgeInsets.all(0),
            child: Text(
              "Xác nhận",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
