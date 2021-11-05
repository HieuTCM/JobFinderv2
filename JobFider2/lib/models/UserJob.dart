

import 'data1.dart';

class UserJob {
  late int userId;
  late int jobId;
  late String date;
  late String status;
  //late Job? job;
  late int id;
  //User user;

  UserJob(
      { required this.userId,
        required this.jobId,
        required this.date,
        required this.status,
        //this.job,
        required this.id
        //this.user
      });

  UserJob.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    jobId = json['jobId'];
    date = json['date'];
    status = json['status'];
    //job = new Job.fromJson(json['job']);
    id = json['id'];
    //user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['jobId'] = this.jobId;
    data['date'] = this.date;
    data['status'] = this.status;
    data['id'] = this.id;
    // if (this.job != null) {
    //   data['job'] = this.job.toJson();
    // }
    // if (this.user != null) {
    //   data['user'] = this.user.toJson();
    // }
    return data;
  }
}