import 'package:flutter/material.dart';
import 'package:job/Screens/profile/body.dart';
import 'package:job/constants.dart';
import 'package:job/views/home.dart';
import 'package:job/views/markPage.dart';
import 'package:job/views/searchpage.dart';
import 'package:job/widgets/bottomAppbar.dart';

class ProfileScreen extends StatefulWidget {
  final String username;
  const ProfileScreen({Key? key, required this.username}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState(this.username);
}

class _ProfileScreenState extends State<ProfileScreen> {

  String username;
 _ProfileScreenState(this.username);

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
          "Tài Khoản",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Body(username: this.username,),
      bottomNavigationBar: bottombar(username: this.username,),
    );
  }
}
