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
  String position;
  String company;
  String price;
  String concept;
  String logo;
  String city;

  Job(this.position, this.company, this.price, this.concept, this.logo,
      this.city);
}

List<Job> getJobs() {
  return <Job>[
    Job("Flutter UI/UX", "Nike Inc.", "40", "Full-Time", "assets/nike.png",
        "San Francisco, California"),
    Job("Product Designer", "Google LLC", "60", "Part-Time",
        "assets/google.png", "San Francisco, California"),
    Job("UI / UX Designer", "Uber Technologies Inc.", "55", "Full-Time",
        "assets/uber.png", "San Francisco, California"),
    Job("Lead UI/UX Designer", "Apple Inc.", "80", "Part-Time",
        "assets/apple.png", "San Francisco, California"),
    Job("Flutter Developer", "Amazon Inc.", "60", "Full-Time",
        "assets/amazon.jpg", "San Francisco, California"),
  ];
}

List<String> getJobsRequirements() {
  return <String>[
    "Exceptional communication skills and team-working skills",
    "Know the principles of animation and you can create high fidelity prototypes",
    "Direct experience using Adobe Premiere, Adobe After Effects & other tools used to create videos, animations, etc.",
    "Good UI/UX knowledge",
  ];
}
