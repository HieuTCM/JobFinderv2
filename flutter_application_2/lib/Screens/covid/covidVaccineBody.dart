// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:job/Screens/covid/covidVaccineMenu.dart';
import 'package:job/constants.dart';

late int valueContent = 1;
late bool valueCamketVac = false;
String dateString1 = "";
String dateString2 = "";

class covidVaccineBody extends StatefulWidget {
  const covidVaccineBody({
    Key? key,
  }) : super(key: key);

  @override
  State<covidVaccineBody> createState() => _covidVaccineBodyState();
}

class _covidVaccineBodyState extends State<covidVaccineBody> {
  DateTime date = DateTime.now();
  Future<Null> selectDatePicker(BuildContext) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2000),
        lastDate: date);
    if (picked != null) {
      setState(() {
        dateString1 = "${picked.year}-${picked.month}-${picked.day}T11:31:32.157";
      });
    }
  }

  Future<Null> selectDatePicker2(BuildContext) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2000),
        lastDate: date);
    if (picked != null) {
      setState(() {
        dateString2 = "${picked.year}-${picked.month}-${picked.day}T11:31:32.157";
      });
    }
  }

  final imagePicker = ImagePicker();
  Future getImage() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text("Nội dung khai báo",
                        style: kSubtitleStyle.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: valueContent,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              valueContent = 1;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Tôi đã tiêm 1 mũi")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: valueContent,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              valueContent = 2;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Tôi đã tiêm 2 mũi")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: valueContent,
                          activeColor: Colors.orange,
                          onChanged: (val) {
                            setState(() {
                              valueContent = 3;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Tôi là F0 đã khỏi bệnh")
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: valueContent == 1
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text("Ngày tiêm mũi 1",
                              style: kSubtitleStyle.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          enabled: true,
                          controller: TextEditingController()
                            ..text = dateString1.toString(),
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.none,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  selectDatePicker(context);
                                });
                              },
                              icon: Icon(
                                Icons.calendar_today,
                                color: Colors.grey,
                              ),
                            ),
                            contentPadding:
                                EdgeInsets.only(bottom: 20, top: 20, left: 20),
                            border: OutlineInputBorder(),
                            labelText: "Chọn ngày tiêm",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(children: [
                          Text("Giấy xác nhận đã tiêm vacxin",
                              style: kSubtitleStyle.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        FloatingActionButton(
                            onPressed: () {
                              getImage();
                            },
                            backgroundColor: Colors.orange,
                            child: Icon(Icons.camera_alt)),
                      ],
                    )
                  : valueContent == 2
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text("Ngày tiêm mũi 1",
                                  style: kSubtitleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              enabled: true,
                              controller: TextEditingController()
                                ..text = dateString1.toString(),
                              textAlign: TextAlign.left,
                              keyboardType: TextInputType.none,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectDatePicker(context);
                                    });
                                  },
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 20, top: 20, left: 20),
                                border: OutlineInputBorder(),
                                labelText: "Chọn ngày tiêm",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(children: [
                              Text("Ngày tiêm mũi 2",
                                  style: kSubtitleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              enabled: true,
                              controller: TextEditingController()
                                ..text = dateString2.toString(),
                              textAlign: TextAlign.left,
                              keyboardType: TextInputType.none,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectDatePicker2(context);
                                    });
                                  },
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(
                                    bottom: 20, top: 20, left: 20),
                                border: OutlineInputBorder(),
                                labelText: "Chọn ngày tiêm",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(children: [
                              Text("Giấy xác nhận đã tiêm vacxin",
                                  style: kSubtitleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            SizedBox(
                              height: 15,
                            ),
                            FloatingActionButton(
                                onPressed: () {
                                  getImage();
                                },
                                backgroundColor: Colors.orange,
                                child: Icon(Icons.camera_alt)),
                          ],
                        )
                      : valueContent == 3
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text("Ngày khỏi bệnh",
                                      style: kSubtitleStyle.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ]),
                                SizedBox(
                                  height: 15,
                                ),
                                TextField(
                                  enabled: true,
                                  controller: TextEditingController()
                                    ..text = dateString1.toString(),
                                  textAlign: TextAlign.left,
                                  keyboardType: TextInputType.none,
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          selectDatePicker(context);
                                        });
                                      },
                                      icon: Icon(
                                        Icons.calendar_today,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.only(
                                        bottom: 20, top: 20, left: 20),
                                    border: OutlineInputBorder(),
                                    labelText: "Chọn ngày khỏi bệnh",
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(children: [
                                  Text("Giấy xác nhận đã tiêm vacxin",
                                      style: kSubtitleStyle.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ]),
                                SizedBox(
                                  height: 15,
                                ),
                                FloatingActionButton(
                                    onPressed: () {
                                      getImage();
                                    },
                                    backgroundColor: Colors.orange,
                                    child: Icon(Icons.camera_alt)),
                              ],
                            )
                          : null,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Checkbox(
                        value: valueCamketVac,
                        onChanged: (value) {
                          setState(() {
                            valueCamketVac = !valueCamketVac;
                          });
                        }),
                    title: Text(
                        "Tôi cam kết những thông tin trên là đúng sự thật"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
