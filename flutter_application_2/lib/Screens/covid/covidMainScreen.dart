import 'package:flutter/material.dart';
import 'package:job/Screens/covid/covidBody.dart';
import 'package:job/Screens/profile/body.dart';
import 'package:job/constants.dart';

class covidMainScreen extends StatelessWidget {
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
          "COVID Passport",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: covidBody(),
    );
  }
}
