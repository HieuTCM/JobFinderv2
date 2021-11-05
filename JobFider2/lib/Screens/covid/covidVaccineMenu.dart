// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/constants.dart';
import 'package:image_picker/image_picker.dart';

class covidVaccineMenu extends StatefulWidget {
  const covidVaccineMenu({
    Key? key,
    required this.option,
  }) : super(key: key);
  final int option;

  @override
  State<covidVaccineMenu> createState() => _covidTestVaccineState();
}

class _covidTestVaccineState extends State<covidVaccineMenu> {
  late int _value = 1;
  bool value = false;
  DateTime date = DateTime.now();
  String dateString = "";
  String dateString2 = "";
  Future<Null> selectDatePicker(BuildContext) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2000),
        lastDate: date);
    if (picked != null) {
      setState(() {
        dateString = "${picked.day}/${picked.month}/${picked.year}";
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
        dateString2 = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  final imagePicker = ImagePicker();
  Future getImage() async {
    final image = await imagePicker.getImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: widget.option == 1
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text("Ngày tiêm mũi 1",
                      style: kSubtitleStyle.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ]),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  enabled: true,
                  controller: TextEditingController()
                    ..text = dateString.toString(),
                  textAlign: TextAlign.left,
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
                          color: Colors.black, fontWeight: FontWeight.bold)),
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
          : widget.option == 2
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
                        ..text = dateString.toString(),
                      textAlign: TextAlign.left,
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
              : widget.option == 3
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
                            ..text = dateString.toString(),
                          textAlign: TextAlign.left,
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
                            labelText: "Chọn ngày khỏi bệnh",
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
                  : widget.option == 4
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Checkbox(
                                  value: value,
                                  onChanged: (value) {
                                    setState(() {
                                      this.value = value!;
                                    });
                                  }),
                              title: Text(
                                  "Tôi cam kết những thông tin trên là đúng sự thật"),
                            ),
                          ],
                        )
                      : null,
    );
  }
}
