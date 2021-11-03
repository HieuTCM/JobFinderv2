
import 'CovidPassport.dart';
import 'CovidTestPaper.dart';
import 'JobSeekerEducation.dart';
import 'JobSeekerWorkExperience.dart';

class User {
  late final int? id;
  late final String? fullname;
  late final String? address;
  late final bool? gender;
  late final int? age;
  late final int? phonenumber;
  late final String? email;
  late final String? dob;
  late final int? citizenIdentification;
  late final bool? status;
  late final String? role;
  late final String? userName;
  late final String? password;
  // List<CovidPassport>? covidPassports;
  // List<CovidTestPaper>? covidTestPapers;
  // List<JobSeekerEducation>? jobSeekerEducations;
  // List<JobSeekerWorkExperience>? jobSeekerWorkExperiences;

  User(
      {this.id,
        this.fullname,
        this.address,
        this.gender,
        this.age,
        this.phonenumber,
        this.email,
        this.dob,
        this.citizenIdentification,
        this.status,
        this.role,
        this.userName,
        this.password,
        // this.covidPassports,
        // this.covidTestPapers,
        // this.jobSeekerEducations,
        // this.jobSeekerWorkExperiences
      });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullname = json['fullname'];
    address = json['address'];
    gender = json['gender'];
    age = json['age'];
    phonenumber = json['phonenumber'];
    email = json['email'];
    dob = json['dob'];
    citizenIdentification = json['citizenIdentification'];
    status = json['status'];
    role = json['role'];
    userName = json['userName'];
    password = json['password'];
    // if (json['covidPassports'] != null) {
    //   covidPassports = <CovidPassport>[];
    //   json['covidPassports'].forEach((v) {
    //     covidPassports!.add(new CovidPassport.fromJson(v));
    //   });
    // }
    // if (json['covidTestPapers'] != null) {
    //   covidTestPapers = <CovidTestPaper>[];
    //   json['covidTestPapers'].forEach((v) {
    //     covidTestPapers!.add(new CovidTestPaper.fromJson(v));
    //   });
    // }
    // if (json['jobSeekerEducations'] != null) {
    //   jobSeekerEducations = <JobSeekerEducation>[];
    //   json['jobSeekerEducations'].forEach((v) {
    //     jobSeekerEducations!.add(new JobSeekerEducation.fromJson(v));
    //   });
    // }
    // if (json['jobSeekerWorkExperiences'] != null) {
    //   jobSeekerWorkExperiences = <JobSeekerWorkExperience>[];
    //   json['jobSeekerWorkExperiences'].forEach((v) {
    //     jobSeekerWorkExperiences!.add(new JobSeekerWorkExperience.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullname'] = this.fullname;
    data['address'] = this.address;
    data['gender'] = this.gender;
    data['age'] = this.age;
    data['phonenumber'] = this.phonenumber;
    data['email'] = this.email;
    data['dob'] = this.dob;
    data['citizenIdentification'] = this.citizenIdentification;
    data['status'] = this.status;
    data['role'] = this.role;
    data['userName'] = this.userName;
    data['password'] = this.password;
    // if (this.covidPassports != null) {
    //   data['covidPassports'] =
    //       this.covidPassports!.map((v) => v.toJson()).toList();
    // }
    // if (this.covidTestPapers != null) {
    //   data['covidTestPapers'] =
    //       this.covidTestPapers!.map((v) => v.toJson()).toList();
    // }
    // if (this.jobSeekerEducations != null) {
    //   data['jobSeekerEducations'] =
    //       this.jobSeekerEducations!.map((v) => v.toJson()).toList();
    // }
    // if (this.jobSeekerWorkExperiences != null) {
    //   data['jobSeekerWorkExperiences'] =
    //       this.jobSeekerWorkExperiences!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}