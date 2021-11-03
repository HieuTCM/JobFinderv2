// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:job/Screens/covid/covidVaccineBody.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/Screens/profile/editProfileMenu.dart';
import 'package:job/Screens/profile/editprofile.dart';
import 'package:job/constants.dart';
import 'package:job/models/CovidPassport.dart';
import 'package:job/provider/FindJob_Provider.dart';

class covidVaccine extends StatelessWidget {
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
          "Khai Báo tiêm chủng",
          style: kTitleStyle,
        ),
        actions: [
          IconButton(
              color: kBlack,
              onPressed: () {
                getImage();
              },
              icon: Icon(
                Icons.qr_code,
              )),
        ],
        centerTitle: true,
      ),
      body: covidVaccineBody(),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          onPressed: () {
            print(valueContent);
            print(dateString1);
            print(dateString2);
            print(userId);
            String date2;
            // dateString2.compareTo("") == true ? "2021-01-01T11:31:32.155Z" : dateString2;
            valueContent == 1 ? date2 = "Chưa tiêm mũi 2" : date2 = dateString2;
            CovidPassport covidPassport=new CovidPassport(
                          id: 1,
                          level: valueContent+1,
                          s1stInjectionDate: dateString1,
                          s2stInjectionDate: dateString2,
                          image: 'image',
                          qrCode: 'qrCode',
                          userId: userId);
            Future<String> result=FindJobProvider.updateCovidPassport(covidPassport);
            result.then((value){
              print(value);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile(username: username1)));
            });
          },
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
              "Cập Nhật",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  final imagePicker = ImagePicker();
  Future getImage() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
  }
}
