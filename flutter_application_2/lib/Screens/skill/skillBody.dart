import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/skill/skillMenu.dart';
import 'package:job/constants.dart';
import 'package:job/models/skill.dart';

List skillList = [
  "Python",
  "Dịch thuật",
  "Quản lý",
  "Team Work",
  "Tiếng anh",
  "Tiếng anh sơ cấp",
  "Tiếng anh cao cấp",
  "Linux",
  "Bán hàng",
  "CSKH",
  "Đóng gói",
  "Ship",
  "Phục vụ",
  "Devops",
  "Quản lí thời gian",
  "Giao tiếp",
  "ReactJS",
  "Angular",
  "Nghiên cứu",
  "AI Developer",
  "Phân tích",
  "Lái xe oto B2",
  "Thiết kế",
  "Tin học văn phòng",
];

class skillBody extends StatefulWidget {
  const skillBody({
    Key? key,
  }) : super(key: key);

  @override
  State<skillBody> createState() => _skillBodyState();
}

class _skillBodyState extends State<skillBody> {
  List<int> pos = posList;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: [
              Text("Kỹ năng của bạn",
                  style: kSubtitleStyle.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ]),
            SizedBox(
              height: 15,
            ),
            TextField(
              enabled: true,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
                border: OutlineInputBorder(),
                labelText: "Tìm kỹ năng",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Row(children: [
              Text("Đã chọn",
                  style: kSubtitleStyle.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ]),
            Container(
              width: 500,
              child: Wrap(
                alignment: WrapAlignment.start,
                children: buildSelectedSkillItem(),
                // crossAxisAlignment: WrapCrossAlignment.start,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Row(children: [
              Text("Các kỹ năng phổ biến",
                  style: kSubtitleStyle.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ]),
            Container(
              width: 500,
              child: Wrap(
                alignment: WrapAlignment.start,
                children: buildSkillItem(),
                // crossAxisAlignment: WrapCrossAlignment.start,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildSkillItem() {
    List<Widget> list = [];
    for (var i = 0; i < skillList.length; i++) {
      list.add(SkillMenu(
        skillitem: skillList[i],
        skillPos: i,
        isAdd: true,
      ));
    }
    return list;
  }

  List<Widget> buildSelectedSkillItem() {
    List<Widget> list = [];
    for (var i = 0; i < pos.length; i++) {
      list.add(SkillMenu(
        skillitem: skillList[pos[i]],
        skillPos: i,
        isAdd: false,
      ));
    }
    return list;
  }
}
