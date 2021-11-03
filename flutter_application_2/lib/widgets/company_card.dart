import 'package:flutter/material.dart';
import 'package:job/constants.dart';
import 'package:job/models/data1.dart';


class CompanyCard extends StatelessWidget {
  final Job? company;
  CompanyCard({this.company});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      margin: EdgeInsets.only(right: 15.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: kBlack,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
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
              Spacer(),
              Text(
                company!.company!.name,
                style: kTitleStyle.copyWith(color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Text(
            company!.jobName!,
            style: kTitleStyle.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: company!.city,
                  style: kSubtitleStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: "  •  ",
                  style: kSubtitleStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: company!.sallary,
                  style: kSubtitleStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          // Expanded(
          //   // child: Row(
          //   //   mainAxisAlignment: MainAxisAlignment.start,
          //   //   children: company!.company.tag
          //   //       .map(
          //   //         (e) => Container(
          //   //           alignment: Alignment.center,
          //   //           margin: EdgeInsets.only(right: 10.0),
          //   //           padding:
          //   //               EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
          //   //           decoration: BoxDecoration(
          //   //             borderRadius: BorderRadius.circular(12.0),
          //   //             color: kBlackAccent,
          //   //           ),
          //   //           child: Text(
          //   //             e,
          //   //             style: kSubtitleStyle.copyWith(
          //   //               color: Colors.white,
          //   //               fontSize: 12.0,
          //   //             ),
          //   //           ),
          //   //         ),
          //   //       )
          //   //       .toList(),
          //   // ),
          // ),
        ],
      ),
    );
  }
}
