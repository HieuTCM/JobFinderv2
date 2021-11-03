// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/Screens/profile/editProfileMenu.dart';
import 'package:job/models/UserJob.dart';
import 'package:job/models/data1.dart';
import 'package:job/provider/FindJob_Provider.dart';

import 'package:job/provider/company_provider.dart';
import 'package:job/views/detail_history.dart';
import 'package:job/views/job_detail.dart';
import 'package:job/widgets/rencent_history.dart';

//List<Application> applications = getApplications();
//  late String status123;

class appliedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<List<UserJob>>(
        future: FindJobProvider.fetchUserJob(userId),
        builder: (BuildContext context, AsyncSnapshot<List<UserJob>> snapshot) {
        if (snapshot.hasError) {
            print('Lỗi ở applied body: ' + snapshot.error.toString());
        }
        if (snapshot.hasData) {
        return Container(
          child: ListView.builder(
                itemCount: snapshot.data!.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  int jobId = snapshot.data![index].jobId;
                  int id = snapshot.data![index].id;
                  String status123 = snapshot.data![index].status;
                  return FutureBuilder<Job>(
                      future: FindJobProvider.fetchJobById(jobId),
                      builder: (context, snapshot){
                        if(snapshot.hasError){
                          print('lỗi ở jobById '+snapshot.error.toString());
                        }if(snapshot.hasData){
                          var recent = snapshot.data;
                          //print('status nè '+status123.toString());
                          return InkWell(
                              onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => DetailHistory(company: recent, index: index, status: status123, userJobId: id)));
                          },
                          child: RecentHistory(company: recent, status: status123),
                          );
                        }else{
                         return Center(child: CircularProgressIndicator(color: Colors.orangeAccent));
                        }
                      }
                  );
          },
        ),

      );
        }else{
          return Center(
          child: CircularProgressIndicator(color: Colors.orangeAccent),
      );
      }
    }),
    ));
  }
}

//   List<Widget> buildApplications() {
//     List<Widget> list = [];
//     for (var i = 0; i < applications.length; i++) {
//       list.add(appliedMenu(
//         application: applications[i],
//       ));
//     }
//     return list;
//   }
// }
