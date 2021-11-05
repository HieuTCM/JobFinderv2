import 'package:flutter/material.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:job/models/notify_model.dart';
import 'package:job/views/home.dart';
import 'package:job/views/markPage.dart';
import 'package:job/views/searchpage.dart';
import 'package:job/widgets/bottomAppbar.dart';

class NotifyDetail extends StatelessWidget {
  const NotifyDetail({Key? key, required this.item}) : super(key: key);

  // Declare a field that holds the Todo.
  final Notify item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 237, 231),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            title: Text('Thông báo'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 255, 160, 0),
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            // actions: <Widget>[
            //   SvgPicture.asset(
            //     "assets/user.svg",
            //     width: 25.0,
            //     color: kBlack,
            //   ),
            //   SizedBox(width: 18.0)
            // ],
          )),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(16.0),
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4.0),
              boxShadow: [
                BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)
              ]),
          child: new SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  item.descpirtion.toString(),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  item.detail.toString(),
                  style: TextStyle(fontSize: 15),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    item.date.toString(),
                  ),
                ),
              ],
            ),
          )),
      bottomNavigationBar: bottombar(username: username1,),
    );
  }
}
