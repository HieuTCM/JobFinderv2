

import 'package:job/models/user.dart';

class CovidPassport {
  late int id;
  late int level;
  late String s1stInjectionDate;
  late String s2stInjectionDate;
  late String image;
  late String qrCode;
  late int userId;
  //late User user;

  CovidPassport(
      { required this.id,
        required this.level,
        required this.s1stInjectionDate,
        required this.s2stInjectionDate,
        required this.image,
        required this.qrCode,
        required this.userId,
        //required this.user
      });

  CovidPassport.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    level = json['level'];
    s1stInjectionDate = json['_1stInjectionDate'];
    s2stInjectionDate = json['_2stInjectionDate'];
    image = json['image'];
    qrCode = json['qrCode'];
    userId = json['userId'];
    //user = (json['user'] != null ? new User.fromJson(json['user']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['level'] = this.level;
    data['_1stInjectionDate'] = this.s1stInjectionDate;
    data['_2stInjectionDate'] = this.s2stInjectionDate;
    data['image'] = this.image;
    data['qrCode'] = this.qrCode;
    data['userId'] = this.userId;
    // if (this.user != null) {
    //   data['user'] = this.user.toJson();
    // }
    return data;
  }
}
