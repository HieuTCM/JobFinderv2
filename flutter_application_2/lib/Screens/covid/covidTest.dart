// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:job/Screens/covid/covidTestBody.dart';
import 'package:job/Screens/profile/editProfileMenu.dart';
import 'package:job/Screens/profile/editprofile.dart';
import 'package:job/constants.dart';
import 'package:job/models/CovidTestPaper.dart';
import 'package:job/provider/FindJob_Provider.dart';

class covidTest extends StatefulWidget {
  const covidTest({Key? key}) : super(key: key);

  @override
  _covidTestState createState() => _covidTestState();
}

class _covidTestState extends State<covidTest> {
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
          "Kết quả xét nghiệm",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: covidTestBody(),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          onPressed: () {
            String testType="";
            String testResult;
            int id=sizeTestPaper;
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => EditProfile()));
            valueTestOption == 1 ? testType="Xét nghiệm PCR"
                : valueTestOption == 2 ? testType="Test nhanh bởi chuyên viên y tế"
                : valueTestOption == 3 ? testType="Test nhanh tự làm" : testResult="";

            valueTestResult == 1 ? testResult="Âm tính"
                : valueTestResult == 2 ? testResult="Dương tính" : testResult="";
            print("date nè "+dateString);
            CovidTestPaper testPaper= new CovidTestPaper(id: id,
                          testType: testType,
                          testResult: testResult,
                          date: dateString,
                          image: 'lalal',
                          userId: userId);
            Future<String> result=FindJobProvider.createCovidTestPaper(testPaper);
            result.then((value){
              print(value);
              Navigator.pop(context);
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
              "Cập nhật",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

