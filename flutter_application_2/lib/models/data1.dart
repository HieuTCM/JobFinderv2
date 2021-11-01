class Job {
  late int id;
  late String type;
  late String city;
  late String sallary;
  late int companyId;
  late String image;
  late String mainCriteria;
  late String jobOpportunity;
  late String employee;
  late String covidPassport;
  late String workingPlace;
  late String salaryDescription;
  late String workingTimeDescription;
  late String workingTime;
  late String salaryDetail;
  late String jobResponsbilities;
  late String tag;
  late String jobName;
  late Company company;


  @override
  String toString() {
    return 'Job{id: $id, type: $type, city: $city, sallary: $sallary, companyId: $companyId, image: $image, mainCriteria: $mainCriteria, jobOpportunity: $jobOpportunity, employee: $employee, covidPassport: $covidPassport, workingPlace: $workingPlace, salaryDescription: $salaryDescription, workingTimeDescription: $workingTimeDescription, workingTime: $workingTime, salaryDetail: $salaryDetail, jobResponsbilities: $jobResponsbilities, tag: $tag, jobName: $jobName, company: $company}';
  }

  Job({required this.id,
    required this.type,
    required this.city,
    required this.sallary,
    required this.companyId,
    required this.image,
    required this.mainCriteria,
    required this.jobOpportunity,
    required this.employee,
    required this.covidPassport,
    required this.workingPlace,
    required this.salaryDescription,
    required this.workingTimeDescription,
    required this.workingTime,
    required this.salaryDetail,
    required this.jobResponsbilities,
    required this.tag,
    required this.jobName,
     required this.company
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
    company =
    (json['company'] != null ? new Company.fromJson(json['company']) : null)!;
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
    if (this.company != null) {
      data['company'] = this.company.toJson();
    }
    return data;
  }
}

class Company {
  late int id;
  late String name;
  late String location;
  late String logo;
  late String aboutCompany;
 late List<String> jobs;

  var companyName;

  var job;

  var sallary;

  var city;

  var mainCriteria;

  Company(
      {required this.id,
        required this.name,
        required this.location,
        required  this.logo,
        required  this.aboutCompany,
        required   this.jobs});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    logo = json['logo'];
    aboutCompany = json['aboutCompany'];
    jobs = json['jobs'].cast<String>();
  }

  get tag => null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['location'] = this.location;
    data['logo'] = this.logo;
    data['aboutCompany'] = this.aboutCompany;
    data['jobs'] = this.jobs;
    return data;
  }
}
