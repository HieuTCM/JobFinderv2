

import 'package:job/models/user.dart';

class JobSeekerEducation {
  late int id;
  late String education;
  late int userId;
  late User user;

  JobSeekerEducation({required this.id, required this.education, required this.userId, required this.user});

  JobSeekerEducation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    education = json['education'];
    userId = json['userId'];
    user = (json['user'] != null ? new User.fromJson(json['user']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['education'] = this.education;
    data['userId'] = this.userId;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}