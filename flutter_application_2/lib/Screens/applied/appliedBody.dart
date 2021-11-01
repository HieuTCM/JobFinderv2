// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/models/data1.dart';

import 'package:job/provider/company_provider.dart';
import 'package:job/views/detail_history.dart';
import 'package:job/views/job_detail.dart';
import 'package:job/widgets/rencent_history.dart';

//List<Application> applications = getApplications();

class appliedBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<List<Job>>(
        future: fetchCompanys(),
        builder: (BuildContext context, AsyncSnapshot<List<Job>> snapshot) {
    if (snapshot.hasError) {
    print('Lỗi này nè: ' + snapshot.error.toString());
    }
    if (snapshot.hasData) {
    return Container(
    child: ListView.builder(
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
    builder: (context) => DetailHistory(
    company: recent,
    index: index,
    ),
    ),
    );
    },
    child: RecentHistory(company: recent),
    );
    },
    ),

    );
    }else{
    return Center(
    child: CircularProgressIndicator(),
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
