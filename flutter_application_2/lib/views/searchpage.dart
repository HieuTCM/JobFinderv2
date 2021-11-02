import 'package:flutter/material.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/constants.dart';
import 'package:job/models/data1.dart';
import 'package:job/provider/company_provider.dart';
import 'package:job/views/home.dart';
import 'package:job/Screens/profile/profile.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job/views/job_detail.dart';
import 'package:job/views/markPage.dart';
import 'package:job/widgets/bottomAppbar.dart';
import 'package:job/widgets/recent_job_card.dart';

class searchPage extends StatefulWidget {
  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  Job? compaby;
  List<Job> job = <Job>[];
  List<Job> jobDisplay = <Job>[];

  @override
  void initState() {
    // TODO: implement initState
    fetchCompanys().then((value) {
      setState(() {
        job.addAll(value);
        jobDisplay = job;
      });
    });
    super.initState();
  }

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
      body: ListView.builder(
          itemCount: jobDisplay.length + 1,
          itemBuilder: (BuildContext context, int index) {
            return index == 0 ? searchBar() : listItem(index - 1);
          }),
      bottomNavigationBar: bottombar(
        username: username1,
      ),
    );
  }

  searchBar() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(hintText: 'Tên công việc'),
        onChanged: (text) {
          text = text.toLowerCase();
          setState(() {
            jobDisplay = job.where((job) {
              var jobName = job.jobName.toLowerCase();
              return jobName.contains(text);
            }).toList();
          });
        },
      ),
    );
  }

  listItem(index) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(right: 18.0, top: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage("assets/" + jobDisplay[index].image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(jobDisplay[index].jobName, style: kTitleStyle),
        subtitle: Text(
          "${jobDisplay[index].mainCriteria} • ${jobDisplay[index].sallary} \n  ${jobDisplay[index].city}",
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => JobDetail(
                company: jobDisplay[index],
              ),
            ),
          );
        },
        trailing: Icon(
          Icons.more_vert,
          color: kBlack,
        ),
      ),
    );
  }
}
