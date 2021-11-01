import 'package:flutter/material.dart';
import 'package:job/Screens/applied/appliedBody.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:job/constants.dart';
import 'package:job/models/data.dart';
import 'package:job/views/home.dart';
import 'package:job/views/markPage.dart';
import 'package:job/views/searchpage.dart';
import 'package:job/widgets/bottomAppbar.dart';

class Applications extends StatefulWidget {
  @override
  _ApplicationsState createState() => _ApplicationsState();
}

class _ApplicationsState extends State<Applications> {
  List<Application> applications = getApplications();

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
          "Lịch Sử Xin Việc",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: appliedBody(),
      bottomNavigationBar: bottombar(username: username1,),
    );
  }
}
