

import 'package:job/models/user.dart';

class JobSeekerWorkExperience {
  late int? id;
  late int? userId;
  late String? skill;
  late String? experience;
  late String? company;
  late String? job;
  late String? startDay;
  late String? endDay;
  late bool? isStillWorking;
  //User user;

  JobSeekerWorkExperience(
      { this.id,
        this.userId,
        this.skill,
        this.experience,
        this.company,
        this.job,
        this.startDay,
        this.endDay,
        this.isStillWorking,
        //this.user
      });

  JobSeekerWorkExperience.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['userId'];
    skill = json['skill'];
    experience = json['experience'];
    company = json['company'];
    job = json['job'];
    startDay = json['startDay'];
    endDay = json['endDay'];
    isStillWorking = json['isStillWorking'];
   //user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['skill'] = this.skill;
    data['experience'] = this.experience;
    data['company'] = this.company;
    data['job'] = this.job;
    data['startDay'] = this.startDay;
    data['endDay'] = this.endDay;
    data['isStillWorking'] = this.isStillWorking;
    // if (this.user != null) {
    //   data['user'] = this.user.toJson();
    // }
    return data;
  }
}