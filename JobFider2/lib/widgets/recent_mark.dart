import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/constants.dart';
import 'package:job/models/data1.dart';
import 'package:job/provider/FindJob_Provider.dart';
import 'package:job/views/markPage.dart';


class RecentMark extends StatelessWidget {
  final Job? company;
  final int markId;
  RecentMark({this.company, required this.markId});
  @override
  Widget build(BuildContext context) {
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
              image: AssetImage("assets/hinhanh/" + company!.image!),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(company!.jobName!, style: kTitleStyle),
        subtitle: Text(
          "${company!.city} • ${company!.mainCriteria}",
        ),
        trailing: IconButton(
          icon: Icon(Icons.bookmark_border),
          color: kOrange,
          onPressed: () {
            _delete(context);
          },
        ),
      ),
    );
  }
  void _delete(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext ctx) {
          return CupertinoAlertDialog(
            title: Text('Xóa công việc lưu trữ'),
            content: Text('Bạn muốn xóa công việc lưu trữ này?'),
            actions: [
              // The "Yes" button
              CupertinoDialogAction(
                onPressed: () {
                  Future<String> result=FindJobProvider.deleteMarkJob(markId);
                  result.then((value){
                    print(value);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => markPage()));
                  });
                  Navigator.of(context).pop();
                },
                child: Text('Có'),
                isDefaultAction: true,
                isDestructiveAction: true,
              ),
              // The "No" button
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Không'),
                isDefaultAction: false,
                isDestructiveAction: false,
              )
            ],
          );
        });
  }

}
