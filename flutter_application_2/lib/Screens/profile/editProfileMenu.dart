// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/covid/covidMainScreen.dart';
import 'package:job/Screens/covid/covidTest.dart';
import 'package:job/Screens/covid/covidVaccine.dart';
import 'package:job/Screens/edu/eduMainScreen.dart';
import 'package:job/Screens/exp/expMainScreen.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/Screens/profile/EditProfileBody.dart';
import 'package:job/Screens/profile/covidPassport.dart';
import 'package:job/Screens/profile/edu.dart';
import 'package:job/Screens/profile/exp.dart';
import 'package:job/Screens/profile/skillMenu.dart';
import 'package:job/Screens/profile/skillMenu2.dart';
import 'package:job/Screens/skill/skillMainScreen.dart';
import 'package:job/constants.dart';
import 'package:job/models/CovidPassport.dart';
import 'package:job/models/CovidTestPaper.dart';
import 'package:job/models/JobSeekerEducation.dart';
import 'package:job/models/JobSeekerWorkExperience.dart';
import 'package:job/models/user.dart';
import 'package:job/provider/FindJob_Provider.dart';
import 'package:job/views/markPage.dart';
import 'package:job/views/qrCode.dart';

class editProfileMenu extends StatefulWidget {
  final String username;
  const editProfileMenu({Key? key, required this.username}) : super(key: key);

  @override
  _editProfileMenuState createState() => _editProfileMenuState(this.username);
}

// late int  userId=0;
<<<<<<< HEAD
late int sizeTestPaper = 0;
late bool gender = true;
=======
late int sizeTestPaper=0;
late bool gender=true;
int passportCount=0;
int testpaperCount=0;
int expCount=0;
int eduCount=0;
>>>>>>> bed4b75206cdd1f95d820bd1d9f66e6cd549cec2

class _editProfileMenuState extends State<editProfileMenu> {
  String username;
  _editProfileMenuState(this.username);

  @override
  Widget build(BuildContext context) {
    // int covidLevel = Random().nextInt(5);
    // int exp = Random().nextInt(2);
    // int edu = Random().nextInt(2);
    // int skill = Random().nextInt(2);
    int covidLevel = 3;
    String exp = "";
    String edu = "";
    int skill = 2;
    //print(covidLevel);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.only(left: 20, top: 25, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          EditProfileBody(
            username: this.username,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Giấy xét nghiệm",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          FutureBuilder<User>(
              future: FindJobProvider.fetchUserByEmail(username),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print('lỗi ở proflie menu ' + snapshot.error.toString());
                }
                if (snapshot.hasData) {
                  // userId=snapshot.data!.id!;
                  //username1=snapshot.data!.userName!;
                  gender = snapshot.data!.gender!;
                  return FutureBuilder<List<CovidTestPaper>>(
                    future: FindJobProvider.fetchCovidTestPaper(userId),
<<<<<<< HEAD
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        print(
                            'lỗi ở proflie menu ' + snapshot.error.toString());
                      }
                      if (snapshot.hasData) {
                        sizeTestPaper = snapshot.data!.length;
                        return SizedBox(
                          height: 150,
                          child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: covidCart(
                                    status: "Có giấy xác nhận âm tính",
                                    level: "1",
                                    fDate: snapshot.data![index].date,
                                    sDate: snapshot.data![index].date),
                              );
                            },
                          ),
                        );
                      } else {
                        return Center(
                            child: CircularProgressIndicator(
                          color: Colors.orangeAccent,
                        ));
=======
                    builder: (context, snapshot){
                      if(snapshot.hasError){
                      print('lỗi ở proflie menu '+snapshot.error.toString());
                      }if(snapshot.hasData){
                        sizeTestPaper=snapshot.data!.length;
                        testpaperCount=snapshot.data!.length;
                        if(testpaperCount == 0){
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              (Expanded(
                                child: Text(
                                    "Chưa có thông tin! Nếu bạn đã giấy xác nhận, hãy khai báo để được ưu tiên duyệt đi làm."),
                              )),
                            ],
                          );
                        }else{
                          return SizedBox(
                            height: 150,
                            child: ListView.builder(
                              itemCount: snapshot.data!.length,
                              itemBuilder: (BuildContext context, int index){
                                return Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: covidCart(
                                      status: "Có giấy xác nhận âm tính",
                                      level: "1",
                                      fDate: snapshot.data![index].date,
                                      sDate: snapshot.data![index].date
                                  ),
                                );
                              },
                            ),
                          );
                        }
                      }else{
                        return Center(child: CircularProgressIndicator(color: Colors.orangeAccent,));
>>>>>>> bed4b75206cdd1f95d820bd1d9f66e6cd549cec2
                      }
                    },
                  );
                } else {
                  return Center(
                      child: CircularProgressIndicator(
                    color: Colors.orangeAccent,
                  ));
                }
              }),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => covidTest()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: new LinearGradient(colors: [
                    Colors.blueAccent,
                    Colors.blue.shade800,
                  ])),
              padding: const EdgeInsets.all(0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Cập nhật thông tin giấy xét nghiệm",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "COVID Passport",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          SizedBox(
            height: 10,
          ),
          FutureBuilder<List<CovidPassport>>(
            future: FindJobProvider.fetchCovidPassport(userId),
<<<<<<< HEAD
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                print("lỗi ở profile menu " + snapshot.error.toString());
              }
              if (snapshot.hasData) {
                return SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        covidLevel = snapshot.data![index].level;
                        return Container(
                          child: covidLevel == 0
                              ? Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    (Expanded(
                                      child: Text(
                                          "Chưa có thông tin! Nếu bạn đã tiêm vaccine hoặc là F0 đã khỏi bệnh, hãy khai báo để được ưu tiên duyệt đi làm."),
                                    )),
                                  ],
                                )
                              : covidLevel == 1
                                  ? Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 10),
                                      child: (covidCart(
                                          status: "Có giấy xác nhận âm tính",
                                          level: "1",
                                          fDate: snapshot
                                              .data![index].s1stInjectionDate,
                                          sDate: snapshot
                                              .data![index].s2stInjectionDate)),
                                    )
                                  : covidLevel == 2
                                      ? Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 10),
                                          child: (covidCart(
                                              status: "Đã tiêm 1 mũi",
                                              level: "2",
                                              fDate: snapshot.data![index]
                                                  .s1stInjectionDate,
                                              sDate: snapshot.data![index]
                                                  .s2stInjectionDate)),
                                        )
                                      : covidLevel == 3
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 0, 10),
                                              child: (covidCart(
                                                  status: "Đã tiêm 2 mũi",
                                                  level: "3",
                                                  fDate: snapshot.data![index]
                                                      .s1stInjectionDate,
                                                  sDate: snapshot.data![index]
                                                      .s2stInjectionDate)),
                                            )
                                          : covidLevel == 4
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 0, 0, 10),
                                                  child: (covidCart(
                                                      status: "F0 đã khỏi bệnh",
                                                      level: "3",
                                                      fDate: snapshot
                                                          .data![index]
                                                          .s1stInjectionDate,
                                                      sDate:
                                                          "Bệnh nhân khỏi bệnh")),
                                                )
                                              : null,
                        );
                      }),
                );
              } else {
                return Center(
                    child: CircularProgressIndicator(
                  color: Colors.orangeAccent,
                ));
=======
            builder: (context, snapshot){
              if(snapshot.hasError){
                print("lỗi ở profile menu "+snapshot.error.toString());
              }if(snapshot.hasData){
                passportCount = snapshot.data!.length;
                print('số passport '+passportCount.toString());
                if(passportCount == 0){
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      (Expanded(
                        child: Text(
                            "Chưa có thông tin! Nếu bạn đã tiêm vaccine hoặc là F0 đã khỏi bệnh, hãy khai báo để được ưu tiên duyệt đi làm."),
                      )),
                    ],
                  );
                }else{
                  return SizedBox(
                    height: 150,
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index){
                          covidLevel=snapshot.data![index].level;
                          return  Container(
                            child: covidLevel == 1
                                ? Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: (covidCart(
                                  status: "Có giấy xác nhận âm tính",
                                  level: "1",
                                  fDate: snapshot.data![index].s1stInjectionDate,
                                  sDate: snapshot.data![index].s2stInjectionDate)),
                            )
                                : covidLevel == 2
                                ? Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: (covidCart(
                                  status: "Đã tiêm 1 mũi",
                                  level: "2",
                                  fDate: snapshot.data![index].s1stInjectionDate,
                                  sDate: snapshot.data![index].s2stInjectionDate)),
                            )
                                : covidLevel == 3
                                ? Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: (covidCart(
                                  status: "Đã tiêm 2 mũi",
                                  level: "3",
                                  fDate: snapshot.data![index].s1stInjectionDate,
                                  sDate: snapshot.data![index].s2stInjectionDate)),
                            )
                                : covidLevel == 4
                                ? Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: (covidCart(
                                  status: "F0 đã khỏi bệnh",
                                  level: "3",
                                  fDate: snapshot.data![index].s1stInjectionDate,
                                  sDate: "Bệnh nhân khỏi bệnh")),
                            )
                                : null,
                          );
                        }
                    ),
                  );
                }
              }else{
                return Center(child: CircularProgressIndicator(color: Colors.orangeAccent,));
>>>>>>> bed4b75206cdd1f95d820bd1d9f66e6cd549cec2
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => qrCodeView()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: new LinearGradient(colors: [
                    Colors.blueAccent,
                    Colors.blue.shade800,
                  ])),
              padding: const EdgeInsets.all(0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "QR code xác nhận tiêm chủng",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        color: kBlack,
                        onPressed: () {},
                        icon: Icon(
                          Icons.qr_code,
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => covidVaccine()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            textColor: Colors.white,
            padding: const EdgeInsets.all(0),
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: new LinearGradient(colors: [
                    Colors.blueAccent,
                    Colors.blue.shade800,
                  ])),
              padding: const EdgeInsets.all(0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Cập nhật thông tin tiêm chủng",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //------------------------------------
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Kinh nghiệm làm việc",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          FutureBuilder<List<JobSeekerWorkExperience>>(
            future: FindJobProvider.fetchJobSeekerWorkExperience(userId),
<<<<<<< HEAD
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                print('lỗi ở work experience ' + snapshot.error.toString());
              }
              if (snapshot.hasData) {
                return SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      exp = snapshot.data![index].experience.toString();
                      return Container(
                        child: exp == "no"
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  (Expanded(
                                    child: Text(
                                        "Điền thông tin về các công việc bạn đã từng làm trước đây để làm đẹp hồ sơ và tăng khả năng được duyệt khi nhận việc"),
                                  )),
                                ],
                              )
                            : Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: expCart(
                                    companyName: snapshot.data![index].company
                                        .toString(),
                                    positionName:
                                        snapshot.data![index].job.toString(),
                                    dateWorkin: snapshot.data![index].startDay
                                        .toString(),
                                    dateWorkout:
                                        snapshot.data![index].endDay.toString(),
                                    countTime:
                                        " (Tu update chu ai gank tinh dum)"),
                              ),
                      );
                    },
                  ),
                );
              } else {
                return Center(
                    child: CircularProgressIndicator(
                  color: Colors.orangeAccent,
                ));
=======
            builder: (context, snapshot){
              if(snapshot.hasError){
                print('lỗi ở work experience '+snapshot.error.toString());
              }if(snapshot.hasData){
                expCount = snapshot.data!.length;
                if(expCount == 0){
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      (Expanded(
                        child: Text(
                            "Điền thông tin về các công việc bạn đã từng làm trước đây để làm đẹp hồ sơ và tăng khả năng được duyệt khi nhận việc"),
                      )),
                    ],
                  );
                }else{
                  return SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext context, int index){
                        exp=snapshot.data![index].experience.toString();
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: expCart(
                                companyName: snapshot.data![index].company.toString(),
                                positionName: snapshot.data![index].job.toString(),
                                dateWorkin: snapshot.data![index].startDay.toString(),
                                dateWorkout: snapshot.data![index].endDay.toString(),
                                countTime: " (Tu update chu ai gank tinh dum)")
                          )
                        );
                      },
                    ),
                  );
                }
              }else{
                return Center(child: CircularProgressIndicator(color: Colors.orangeAccent,));
>>>>>>> bed4b75206cdd1f95d820bd1d9f66e6cd549cec2
              }
            },
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => expMainScreen()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
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
                "Thêm kinh nghiệm",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //------------------------------------
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Học vấn",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          FutureBuilder<List<JobSeekerEducation>>(
              future: FindJobProvider.fetchJobSeekerEducation(userId),
<<<<<<< HEAD
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  print('lỗi ở job education ' + snapshot.error.toString());
                }
                if (snapshot.hasData) {
                  return SizedBox(
                    height: 150,
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          edu = snapshot.data![index].education;
                          return Container(
                            child: edu == "no"
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      (Expanded(
                                        child: Text(
                                            "Bạn chưa có thông tin học vấn của mình trên JobsGO"),
                                      )),
                                    ],
                                  )
                                : Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                    child: eduCart(
                                        schoolName:
                                            snapshot.data![index].schoolName,
                                        majorName: snapshot.data![index].majors,
                                        dateWorkin:
                                            snapshot.data![index].startDay,
                                        dateWorkout:
                                            snapshot.data![index].endDay),
                                  ),
                          );
                        }),
                  );
                } else {
                  return Center(
                      child: CircularProgressIndicator(
                    color: Colors.orangeAccent,
                  ));
=======
              builder: (context, snapshot){
                if(snapshot.hasError){
                  print('lỗi ở job education '+snapshot.error.toString());
                }if(snapshot.hasData){
                  eduCount = snapshot.data!.length;
                  if(eduCount == 0){
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        (Expanded(
                          child: Text(
                              "Bạn chưa có thông tin học vấn của mình trên JobsGO"),
                        )),
                      ],
                    );
                  }else{
                    return SizedBox(
                      height: 150,
                      child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (BuildContext context, int index){
                            edu=snapshot.data![index].education;
                            return  Container(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: eduCart(
                                    schoolName: snapshot.data![index].schoolName,
                                    majorName: snapshot.data![index].majors,
                                    dateWorkin: snapshot.data![index].startDay,
                                    dateWorkout: snapshot.data![index].endDay),
                              ),
                            );
                          }
                      ),
                    );
                  }
                }else{
                  return Center(child: CircularProgressIndicator(color: Colors.orangeAccent,));
>>>>>>> bed4b75206cdd1f95d820bd1d9f66e6cd549cec2
                }
              }),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eduMainScreen()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
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
                "Thêm học vấn",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //------------------------------------
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.black,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Kỹ năng",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 15,
            thickness: 2,
          ),
          Container(
            child: skill == 0
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      (Expanded(
                        child: Text(
                            "Cập nhật kỹ năng của bạn để gây ấn tượng với nhà tuyển dụng"),
                      )),
                    ],
                  )
                : skillMenu(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: skill == 0 ? null : skillMenu2(),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => skillMainScreen()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
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
                "Thêm kỹ năng",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //------------------------------------
        ],
      ),
    );
  }
}
