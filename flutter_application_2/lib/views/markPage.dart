import 'package:flutter/material.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/constants.dart';
import 'package:job/models/data1.dart';
import 'package:job/provider/company_provider.dart';

import 'package:job/views/home.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job/views/job_detail.dart';
import 'package:job/views/searchpage.dart';
import 'package:job/widgets/bottomAppbar.dart';
import 'package:job/widgets/recent_job_card.dart';
import 'package:job/widgets/recent_mark.dart';

class markPage extends StatefulWidget {
  @override
  State<markPage> createState() => _markPageState();
}

class _markPageState extends State<markPage> {
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
          "Lưu Trữ",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Container(
    child: FutureBuilder<List<Job>>(
    future: fetchCompanys(),
    builder: (BuildContext context, AsyncSnapshot<List<Job>> snapshot) {
      var company = snapshot.data![0];
      if (snapshot.hasError) {
        print('Lỗi này nè: ' + snapshot.error.toString());
      }
      if (snapshot.hasData) {
        return Container(
          margin: EdgeInsets.only(left: 18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10.0),
                Text(
                  "Các công việc đã lưu",
                  style: kTitleStyle,
                ),
                ListView.builder(
                  itemCount: snapshot.data!.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    var recent = snapshot.data![index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                JobDetail(
                                  company: recent,
                                ),
                          ),
                        );
                      },
                      child: RecentMark(company: recent),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      }else{
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    }),
      ),
      bottomNavigationBar: bottombar(username: username1,),
    );

  }
}
