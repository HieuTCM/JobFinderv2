
class MarkJob {
  late int userId;
  late int jobId;
  late int id;
  //Job job;
  //User user;

  MarkJob({required this.userId, required this.jobId, required this.id,
    //this.job, this.user
  });

  MarkJob.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    jobId = json['jobId'];
    id = json['id'];
    //job = json['job'] != null ? new Job.fromJson(json['job']) : null;
    //user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['jobId'] = this.jobId;
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