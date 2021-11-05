

import 'package:job/models/user.dart';

class JobSeekerEducation {
  late int id;
  late String education;
  late int userId;
  late String schoolName;
  late String majors;
  late String startDay;
  late String endDay;
  late bool isStillStudying;
  //Null user;

  JobSeekerEducation(
      {required this.id,
        required this.education,
        required this.userId,
        required this.schoolName,
        required this.majors,
        required this.startDay,
        required this.endDay,
        required this.isStillStudying,
        //this.user
      });

  JobSeekerEducation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    education = json['education'];
    userId = json['userId'];
    schoolName = json['schoolName'];
    majors = json['majors'];
    startDay = json['startDay'];
    endDay = json['endDay'];
    isStillStudying = json['isStillStudying'];
    //user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['education'] = this.education;
    data['userId'] = this.userId;
    data['schoolName'] = this.schoolName;
    data['majors'] = this.majors;
    data['startDay'] = this.startDay;
    data['endDay'] = this.endDay;
    data['isStillStudying'] = this.isStillStudying;
    //data['user'] = this.user;
    return data;
  }
}