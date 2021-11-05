import 'package:flutter/material.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/constants.dart';
import 'package:job/models/MarkJob.dart';
import 'package:job/models/data1.dart';
import 'package:job/provider/FindJob_Provider.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:job/views/job_detail.dart';
import 'package:job/views/markdetail.dart';

import 'package:job/widgets/bottomAppbar.dart';

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
        child: FutureBuilder<List<MarkJob>>(
            future: FindJobProvider.fetchMarkJob(userId),
            builder:
                (BuildContext context, AsyncSnapshot<List<MarkJob>> snapshot) {
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
                            int jobId = snapshot.data![index].jobId;
                            int markId = snapshot.data![index].id;
                            return FutureBuilder<Job>(
                                future: FindJobProvider.fetchJobById(jobId),
                                builder: (context, snapshot) {
                                  if (snapshot.hasError) {
                                    print('lỗi load job ở markPage ' +
                                        snapshot.error.toString());
                                  }
                                  if (snapshot.hasData) {
                                    var recent = snapshot.data;
                                    return InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => MarkDetail(
                                                company: recent,
                                                markId: markId),
                                          ),
                                        );
                                      },
                                      child: RecentMark(
                                          company: recent, markId: markId),
                                    );
                                  } else {
                                    return Container();
                                  }
                                });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(color: Colors.orangeAccent),
                );
              }
            }),
      ),
      bottomNavigationBar: bottombar(username: username1),
    );
  }
}
