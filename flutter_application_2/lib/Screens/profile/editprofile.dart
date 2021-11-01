import 'package:flutter/material.dart';
import 'package:job/Screens/applied/historyApplied.dart';
import 'package:job/Screens/profile/EditProfileBody.dart';
import 'package:job/Screens/profile/body.dart';
import 'package:job/Screens/profile/editProfileMenu.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:job/constants.dart';
import 'package:job/views/home.dart';
import 'package:job/views/markPage.dart';
import 'package:job/widgets/bottomAppbar.dart';

class EditProfile extends StatefulWidget {
  final String username;
  const EditProfile({Key? key, required this.username}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState(this.username);
}

class _EditProfileState extends State<EditProfile> {
  String username;
 _EditProfileState(this.username);

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
          "Hồ Sơ Cá Nhân",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: editProfileMenu(username: this.username,),
      bottomNavigationBar: bottombar(username: this.username,),
    );
  }
}
