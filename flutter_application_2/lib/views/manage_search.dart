// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/constants.dart';
import 'package:job/main.dart';
import 'package:job/models/typeJob.dart';
import 'package:job/views/home.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job/views/markPage.dart';
import 'package:job/views/searchpage.dart';
import 'package:job/widgets/bottomAppbar.dart';

class mngSearch extends StatefulWidget {
  @override
  State<mngSearch> createState() => _mngSearchState();
}

class _mngSearchState extends State<mngSearch> {
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
          "Tìm kiếm",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0),
              Text(
                'Hình thức làm việc',
                style: kTitleStyle,
              ),
              Container(
                margin: EdgeInsets.only(right: 18.0),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: valueFulltime,
                      onChanged: (value) => setState(() {
                        this.valueFulltime = value!;
                        ;
                      }),
                    ),
                    Text('Full Time'),
                    Checkbox(
                      value: valuePartTime,
                      onChanged: (value) => setState(() {
                        this.valuePartTime = value!;
                        ;
                      }),
                    ),
                    Text('Part time'),
                  ],
                ),
              ),
              Text(
                'Giới tính',
                style: kTitleStyle,
              ),
              Container(
                margin: EdgeInsets.only(right: 18.0),
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: valueq1,
                      onChanged: (value) => setState(() {
                        this.valueq1 = value!;
                        ;
                      }),
                    ),
                    Text('Nam'),
                    Checkbox(
                      value: valueq2,
                      onChanged: (value) => setState(() {
                        this.valueq2 = value!;
                        ;
                      }),
                    ),
                    Text('Nữ'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Chọn ngành nghề',
                style: kTitleStyle,
              ),
              Container(
                margin: EdgeInsets.only(left: 18.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    iconSize: 36,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: kBlack,
                    ),
                    value: job,
                    isExpanded: true,
                    items: jobs.map(bulidMenuJob).toList(),
                    onChanged: (job) => setState(() {
                      this.job = job;
                    }),
                  ),
                ),
              ),
              Divider(
                height: 5,
                thickness: 2,
              ),
              Text(
                'Chọn khu vực',
                style: kTitleStyle,
              ),
              Container(
                margin: EdgeInsets.only(left: 18.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    iconSize: 36,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: kBlack,
                    ),
                    value: local,
                    isExpanded: true,
                    items: items.map(bulidMenuItem).toList(),
                    onChanged: (local) => setState(() {
                      this.local = local;
                    }),
                  ),
                ),
              ),
              Divider(
                height: 5,
                thickness: 2,
              ),
              Text(
                'Chọn mức Lương',
                style: kTitleStyle,
              ),
              Container(
                margin: EdgeInsets.only(left: 18.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    iconSize: 36,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: kBlack,
                    ),
                    value: salary,
                    isExpanded: true,
                    items: salaries.map(bulidMenuSalary).toList(),
                    onChanged: (salary) => setState(() {
                      this.salary = salary;
                    }),
                  ),
                ),
              ),
              Divider(
                height: 5,
                thickness: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 70.0),
                width: 250,
                child: SizedBox(
                  height: 35.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => searchPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kBlack,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Text(
                      "Áp dụng",
                      style: kTitleStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottombar(username: username1),
    );
  }

  final items = [
    'TP.Hồ Chí Minh',
    'Long An',
    'Bình Dương',
    'Biên Hòa',
    'Bà Rịa - Vũng Tàu',
    'Tây Ninh',
    'Đà Lạt',
    'Long Thành'
  ];
  final salaries = [
    '3 - 5 Triệu',
    '5 - 7 Triệu',
    '7 - 10 Triệu',
    'Trên 10 triệu',
  ];
  final jobs = [
    'Bán hàng - Kinh doanh',
    'Du lịch - Vận tải',
    'Tiếp thị - Quảng cáo',
    'Tư vấn',
    'CNTT - Phần mềm',
    'Giáo dục - Đào tạo',
  ];
  String? job;
  String? salary;
  String? local;
  DropdownMenuItem<String> bulidMenuJob(String job) => DropdownMenuItem(
      value: job,
      child: Text(
        job,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
  DropdownMenuItem<String> bulidMenuSalary(String salary) => DropdownMenuItem(
      value: salary,
      child: Text(
        salary,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
  DropdownMenuItem<String> bulidMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
  bool valueFulltime = false;
  bool valuePartTime = false;
  bool valueq1 = false;
  bool valueq2 = false;
  bool valueq3 = false;
  bool valueq4 = false;
  bool valueq5 = false;
  bool valueq6 = false;
  bool valueq7 = false;
  bool valueq8 = false;
  bool valueqTD = false;
  bool valueq10 = false;
  bool value11 = false;
  bool value12 = false;
  final typeJobs = [
    TypeJob(title: 'Full time'),
    TypeJob(title: 'Part-time'),
  ];
  Widget buildLisyTypeJob(TypeJob typeJob) => listJobType(
        typeJob: typeJob,
        onCliked: () {
          setState(() {
            final newValue = !typeJob.value;
            typeJob.value = newValue;
          });
        },
      );
  Widget listJobType({
    required TypeJob typeJob,
    required VoidCallback onCliked,
  }) =>
      ListTile(
        onTap: onCliked,
        leading: Checkbox(
          value: typeJob.value,
          onChanged: (value) => onCliked(),
        ),
        title: Text(
          typeJob.title,
        ),
      );
}
