class NavigationItem {
  String title;

  NavigationItem(this.title);
}

List<NavigationItem> getNavigationItemList() {
  return <NavigationItem>[
    NavigationItem("Jobs"),
    NavigationItem("Applications"),
  ];
}

class Application {
  String position;
  String company;
  String status;
  String price;
  String logo;

  Application(this.position, this.company, this.status, this.price, this.logo);
}

List<Application> getApplications() {
  return <Application>[
    Application("Tài xế xe tải", "Công ty XZY - 6Triệu/tháng",
        "Đã được chấp nhận", "", "assets/nike-Logo.png"),
    Application("Nhân Viên bán hàng", "Quán ABC - 5Triệu/tháng", "Đang chờ", "",
        "assets/uber-logo-redesign_1x.png"),
    Application("Tài xế xe tải", "Công ty XZY - 6Triệu/tháng", "Đã Hủy", "",
        "assets/soundcloud-icon.png"),
    Application("Tài xế xe tải", "Công ty XZY - 6Triệu/tháng", "Bị Từ chối", "",
        "assets/nike-Logo.png"),
  ];
}
class Job {
  late int? id;
  late String? type;
  late String? city;
  late String? sallary;
  late int? companyId;
  late String? image;
  late String? mainCriteria;
  late String? jobOpportunity;
  late String? employee;
  late String? covidPassport;
  late String? workingPlace;
  late String? salaryDescription;
  late String? workingTimeDescription;
  late String? workingTime;
  late String? salaryDetail;
  late String? jobResponsbilities;
  late String? tag;
  late String? jobName;
  //late Company? company;


  Job({this.id,
    this.type,
    this.city,
    this.sallary,
    this.companyId,
    this.image,
    this.mainCriteria,
    this.jobOpportunity,
    this.employee,
    this.covidPassport,
    this.workingPlace,
    this.salaryDescription,
    this.workingTimeDescription,
    this.workingTime,
    this.salaryDetail,
    this.jobResponsbilities,
    this.tag,
    this.jobName,
    //this.company
  } );

  Job.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    city = json['city'];
    sallary = json['sallary'];
    companyId = json['companyId'];
    image = json['image'];
    mainCriteria = json['mainCriteria'];
    jobOpportunity = json['jobOpportunity'];
    employee = json['employee'];
    covidPassport = json['covidPassport'];
    workingPlace = json['workingPlace'];
    salaryDescription = json['salaryDescription'];
    workingTimeDescription = json['workingTimeDescription'];
    workingTime = json['workingTime'];
    salaryDetail = json['salaryDetail'];
    jobResponsbilities = json['jobResponsbilities'];
    tag = json['tag'];
    jobName = json['jobName'];
    //company = new Company.fromJson(json['company']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['city'] = this.city;
    data['sallary'] = this.sallary;
    data['companyId'] = this.companyId;
    data['image'] = this.image;
    data['mainCriteria'] = this.mainCriteria;
    data['jobOpportunity'] = this.jobOpportunity;
    data['employee'] = this.employee;
    data['covidPassport'] = this.covidPassport;
    data['workingPlace'] = this.workingPlace;
    data['salaryDescription'] = this.salaryDescription;
    data['workingTimeDescription'] = this.workingTimeDescription;
    data['workingTime'] = this.workingTime;
    data['salaryDetail'] = this.salaryDetail;
    data['jobResponsbilities'] = this.jobResponsbilities;
    data['tag'] = this.tag;
    data['jobName'] = this.jobName;
    // if (this.company != null) {
    //   data['company'] = this.company!.toJson();
    // }
    return data;
  }
}

// class Job {
//   String position;
//   String company;
//   String price;
//   String concept;
//   String logo;
//   String city;
//
//   Job(this.position, this.company, this.price, this.concept, this.logo,
//       this.city);
// }
//
// List<Job> getJobs() {
//   return <Job>[
//     Job("Flutter UI/UX", "Nike Inc.", "40", "Full-Time", "assets/nike.png",
//         "San Francisco, California"),
//     Job("Product Designer", "Google LLC", "60", "Part-Time",
//         "assets/google.png", "San Francisco, California"),
//     Job("UI / UX Designer", "Uber Technologies Inc.", "55", "Full-Time",
//         "assets/uber.png", "San Francisco, California"),
//     Job("Lead UI/UX Designer", "Apple Inc.", "80", "Part-Time",
//         "assets/apple.png", "San Francisco, California"),
//     Job("Flutter Developer", "Amazon Inc.", "60", "Full-Time",
//         "assets/amazon.jpg", "San Francisco, California"),
//   ];
// }
//
// List<String> getJobsRequirements() {
//   return <String>[
//     "Exceptional communication skills and team-working skills",
//     "Know the principles of animation and you can create high fidelity prototypes",
//     "Direct experience using Adobe Premiere, Adobe After Effects & other tools used to create videos, animations, etc.",
//     "Good UI/UX knowledge",
//   ];
//}
