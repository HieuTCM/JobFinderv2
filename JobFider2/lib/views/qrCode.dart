import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/profile/EditProfileBody.dart';
import 'package:job/constants.dart';

class qrCodeView extends StatelessWidget {
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
          "QR Code",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 20, top: 25, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      'Chứng nhận tiêm chủng',
                      style: kPageTitleStyle,
                    ),
                    Image(image: AssetImage("assets/qr.png"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
