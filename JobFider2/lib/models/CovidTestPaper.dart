
import 'package:job/models/user.dart';

class CovidTestPaper {
  late int id;
  late String testType;
  late String testResult;
  late String date;
  late String image;
  late int userId;
  //late User user;

  CovidTestPaper(
      {required this.id,
        required this.testType,
        required this.testResult,
        required this.date,
        required this.image,
        required this.userId,
        //required this.user
  });

  CovidTestPaper.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    testType = json['testType'];
    testResult = json['testResult'];
    date = json['date'];
    image = json['image'];
    userId = json['userId'];
    //user = (json['user'] != null ? new User.fromJson(json['user']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['testType'] = this.testType;
    data['testResult'] = this.testResult;
    data['date'] = this.date;
    data['image'] = this.image;
    data['userId'] = this.userId;
    // if (this.user != null) {
    //   data['user'] = this.user.toJson();
    // }
    return data;
  }
}