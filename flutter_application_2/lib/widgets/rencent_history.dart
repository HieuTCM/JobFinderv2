import 'package:flutter/material.dart';
import 'package:job/constants.dart';

import 'package:job/models/data1.dart';

class RecentHistory extends StatelessWidget {
  final Job? company;
  RecentHistory({this.company});
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
              image: AssetImage("assets/" + company!.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(company!.jobName, style: kTitleStyle),
        subtitle: Text(
          "${company!.city} • ${company!.mainCriteria} • ${company!.sallary} ",
        ),
        trailing: Container(
          width: 85,
          decoration: BoxDecoration(
            color: "${company!.type}" == "Đang chờ"
                ? Colors.yellow[700]
                : "${company!.type}" == "Thành công"
                    ? Colors.green[500]
                    : "${company!.type}" == "Đã Hủy"
                        ? Colors.red[500]
                        : Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Center(
            child: Text(
              "${company!.type}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
