import 'package:flutter/material.dart';
import 'package:job/constants.dart';

class covidCart extends StatelessWidget {
  final String status, level, fDate, sDate;

  const covidCart({
    Key? key,
    required this.status,
    required this.level,
    required this.sDate,
    required this.fDate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String statusDate1 = "";
    String statusDate2 = "";
    switch (int.parse(level)) {
      case 0:
        statusDate1 = "Chưa có thông tin";
        statusDate2 = "null";
        break;
      case 1:
        statusDate1 = "Ngày thực hiện xét nghiệm";
        statusDate2 = "null";
        break;
      case 2:
        statusDate1 = "Ngày tiêm mũi 1";
        statusDate2 = "null";
        break;
      case 3:
        statusDate1 = "Ngày tiêm mũi 1";
        statusDate2 = "Ngày tiêm mũi 2";
        if (sDate == "null") {
          statusDate1 = "Ngày khỏi bệnh";
          statusDate2 = "null";
        }
        break;
    }

    return Container(
      //width: 320,
      //margin: EdgeInsets.only(right: 15.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: int.parse(level) == 0
            ? Colors.grey[200]
            : int.parse(level) == 1
                ? Colors.grey[200]
                : int.parse(level) == 2
                    ? Colors.yellow[600]
                    : Colors.green[600],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          (int.parse(level)) == 1
              ? SizedBox(
                  height: 1,
                )
              : Text(
                  "Level: $level",
                  style: kSubtitleStyle.copyWith(
                      color: kBlackAccent,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
          SizedBox(height: 15.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: status,
                  style: kTitleStyle,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          RichText(
            text: TextSpan(
              children: statusDate1 == "Chưa có thông tin"
                  ? [
                      TextSpan(
                        text: statusDate1,
                        style: kTitleStyle,
                      ),
                    ]
                  : [
                      TextSpan(
                        text: statusDate1,
                        style: kTitleStyle,
                      ),
                      TextSpan(
                        text: "  •  ",
                        style: kTitleStyle,
                      ),
                      TextSpan(
                        text: fDate,
                        style: kTitleStyle,
                      ),
                    ],
            ),
          ),
          SizedBox(height: 15.0),
          RichText(
            text: TextSpan(
              children: (statusDate2 != "null")
                  ? [
                      TextSpan(
                        text: statusDate2,
                        style: kTitleStyle,
                      ),
                      TextSpan(
                        text: "  •  ",
                        style: kTitleStyle,
                      ),
                      TextSpan(
                        text: sDate,
                        style: kTitleStyle,
                      ),
                    ]
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
