// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:job/constants.dart';

late var valueTestOption = 1;
late var valueTestResult = 1;
late bool valueCamket = false;
String dateString = "";

class covidTestBody extends StatefulWidget {
  const covidTestBody({
    Key? key,
  }) : super(key: key);

  @override
  State<covidTestBody> createState() => _covidTestBodyState();
}

class _covidTestBodyState extends State<covidTestBody> {
  final imagePicker = ImagePicker();
  Future getImage() async {
    final image =
        await imagePicker.getImage(source: ImageSource.camera).toString();
  }

  DateTime date = DateTime.now();

  Future<Null> selectDatePicker(BuildContext) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2000),
        lastDate: date);
    if (picked != null) {
      setState(() {
        dateString = "${picked.year}-${picked.month}-${picked.day}T11:10:20.591Z";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
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
                    Text("Bạn đã xét nghiệm theo hình thức nào?",
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
                          groupValue: valueTestOption,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              valueTestOption = 1;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Xét nghiệm PCR")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: valueTestOption,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              valueTestOption = 2;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Test nhanh bởi chuyên viên y tế")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: valueTestOption,
                          activeColor: Colors.orange,
                          onChanged: (val) {
                            setState(() {
                              valueTestOption = 3;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Test nhanh tự làm")
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text("Kết quả xét nghiệm?",
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
                          groupValue: valueTestResult,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              valueTestResult = 1;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Âm tính")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: valueTestResult,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              valueTestResult = 2;
                            });
                          }),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Dương tính")
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text("Ngày thực hiện xét nghiệm",
                        style: kSubtitleStyle.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    enabled: true,
                    keyboardType: TextInputType.none,
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
                      labelText: "Chọn ngày xét nghiệm",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Text("Hình ảnh kết quả xét nghiệm",
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
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
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
                        value: valueCamket,
                        onChanged: (value) {
                          setState(() {
                            valueCamket = !valueCamket;
                          });
                        }),
                    title: Text(
                        "Tôi cam kết những thông tin trên là đúng sự thật"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
