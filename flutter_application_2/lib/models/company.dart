import 'package:job/Screens/exp/expBody.dart';
import 'package:job/Screens/exp/expBody.dart';
import 'package:job/Screens/exp/expBody.dart';

class Company {
  late final String? companyName;
  late final String? type;
  late final String? job;
  late final String? time;
  late final String? city;
  late final String? sallary;
  late final String? image;
  late final String? mainCriteria;
  late final String? jobOpportunity;
  late final String? employee;
  late final String? covidPassport;
  late final String? workingPlace;
  late final List<String>? salaryDescription;
  late final String? workingTimeDescription;
  late final List<String>? workingTime;
  late final String? salaryDetail;
  late final List<String>? aboutCompany;
  late final List<String>? jobResponsbilities;
  late final List<String>? tag;

  Company({
    this.time,
    this.type,
    this.city,
    this.job,
    this.covidPassport,
    this.companyName,
    this.sallary,
    this.tag,
    this.image,
    this.salaryDescription,
    this.workingPlace,
    this.workingTimeDescription,
    this.workingTime,
    this.mainCriteria,
    this.employee,
    this.salaryDetail,
    this.jobOpportunity,
    this.jobResponsbilities,
    this.aboutCompany,
  });
}


List<Company> companyList = [
  Company(
      companyName: "Cafe ABC",
      time: "30 - 12 - 2021",
      job: "Nhân Viên Phục Vụ",
      city: "Lê Văn Việt, Quận 9",
      sallary: "4-5Tr/Tháng",
      image: "assets/nike-Logo.png",
      tag: [
        "Full Time",
        "Part-time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      workingTime: [
        "Ca làm: ca 1 7:00-15:00, ca 2 15:00-23:00",
        "Fulltime: làm việc 7 ngày trong tuần, 1 tuần được 1 ngày nghỉ",
        "Part-time: làm việc ít nhất 3 ngày trong tuần",
      ],
      workingTimeDescription:
          "Bạn có thể linh hoạt chọn ca/ngày làm việc theo thời gian rảnh của mình.",
      salaryDescription: [
        "Fulltime: 25.000VND/giờ",
        "Part-time: 20.000VND/giờ"
      ],
      salaryDetail:
          "Thu nhập thực lãnh(chưa tính thuế TNCN nếu có).\nThanh toán lương vào ngày 5 và 20 hằng tháng.",
      jobOpportunity:
          "Nhân viên phục vụ quán cafe, bưng nước và dọn dẹp bàn ghế.",
      jobResponsbilities: [
        "Nhanh nhẹn, tháo vát, thân thiện",
        "Ngoại hình ưa nhìn - Ưu tiên nữ"
      ],
      workingPlace: "Quán Cafe ABC, Số 123, Lê Văn Việt, Quận 9",
      covidPassport: "Level 3: Đã tiêm 2 mũi vacxin hoặc F0 đã khỏi bệnh.",
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Quán Cơm ABC",
      time: "30 - 12 - 2021",
      job: "Bảo vệ giữ xe",
      city: "456, Quang Trung",
      sallary: "5-6Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Full Time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      workingTime: [
        "Ca làm: ca 1 6:00-14:00, ca 2 14:00-22:00.",
        "Một tuần làm việc 7 ngày, 1 tuần được 1 ngày nghỉ.",
      ],
      workingTimeDescription:
          "Bạn có thể linh hoạt chọn ca/ngày làm việc theo thời gian rảnh của mình.",
      salaryDescription: [
        "30.000VND/giờ",
      ],
      salaryDetail:
          "Thu nhập thực lãnh(chưa tính thuế TNCN nếu có).\nThanh toán lương vào ngày 10 hằng tháng.",
      jobOpportunity: "Giữ xe cho khách của quán",
      jobResponsbilities: [
        "Nhanh nhẹn, siêng năng",
      ],
      workingPlace:
          "Quán cơm ABC, Số 50, đường Hồ Việt Hương, Hiệp Phú , Quận 9",
      covidPassport: "Level 3: Đã tiêm 2 mũi vacxin hoặc F0 đã khỏi bệnh.",
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Trung tầm gia sư",
      time: "30 - 12 - 2021",
      job: "Gia Sư AV",
      city: "Quận Phú Nhuận",
      sallary: "5-7tr/Tháng",
      image: "assets/soundcloud-icon.png",
      tag: [
        "Part-time",
      ],
      mainCriteria: "Part-time",
      employee: "15 người",
      workingTime: [
        "Một tuần dạy học 3 ngày, một ngày ít nhất 3 tiếng",
      ],
      workingTimeDescription: "Thời gian biểu dạy học do học sinh yêu cầu.",
      salaryDescription: [
        "Fulltime: 45.000VND/giờ",
      ],
      salaryDetail:
          "Thu nhập thực lãnh(chưa tính thuế TNCN nếu có).\nThanh toán lương vào ngày 15 hằng tháng.",
      jobOpportunity:
          "Gia sự dạy AV cho học sinh cấp 2. Có thể dạy tại nhà hoặc Online, thời khóa biểu do học sinh yêu cầu",
      jobResponsbilities: [
        "Có bằng sư phạm ngành AV hoặc sinh viên năm 3 \ntrở lên thuộc ngành ngôn ngữ anh",
        "Thân thiện, Ngoại hình ưa nhìn",
      ],
      workingPlace: "Tùy thuộc vào địa chỉ của học sinh",
      covidPassport: "Level 3: Đã tiêm 2 mũi vacxin hoặc F0 đã khỏi bệnh.",
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
];

List<Company> recentList = [
  Company(
      companyName: "Cafe ABC",
      time: "30 - 12 - 2021",
      job: "Nhân Viên Phục Vụ",
      city: "Lê Văn Việt, Quận 9",
      sallary: "4-5Tr/Tháng",
      image: "assets/nike-Logo.png",
      tag: [
        "Full Time",
        "Part-time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      workingTime: [
        "Ca làm: ca 1 7:00-15:00, ca 2 15:00-23:00",
        "Fulltime: làm việc 7 ngày trong tuần, 1 tuần được 1 ngày nghỉ",
        "Part-time: làm việc ít nhất 3 ngày trong tuần",
      ],
      workingTimeDescription:
          "Bạn có thể linh hoạt chọn ca/ngày làm việc theo thời gian rảnh của mình.",
      salaryDescription: [
        "Fulltime: 25.000VND/giờ",
        "Part-time: 20.000VND/giờ"
      ],
      salaryDetail:
          "Thu nhập thực lãnh(chưa tính thuế TNCN nếu có).\nThanh toán lương vào ngày 5 và 20 hằng tháng.",
      jobOpportunity:
          "Nhân viên phục vụ quán cafe, bưng nước và dọn dẹp bàn ghế.",
      jobResponsbilities: [
        "Nhanh nhẹn, tháo vát, thân thiện",
        "Ngoại hình ưa nhìn - Ưu tiên nữ"
      ],
      workingPlace: "Quán Cafe ABC, Số 123, Lê Văn Việt, Quận 9",
      covidPassport: "Level 3: Đã tiêm 2 mũi vacxin hoặc F0 đã khỏi bệnh.",
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Quán Cơm ABC",
      time: "30 - 12 - 2021",
      job: "Bảo vệ giữ xe",
      city: "456, Quang Trung",
      sallary: "5-6Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Full Time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      workingTime: [
        "Ca làm: ca 1 6:00-14:00, ca 2 14:00-22:00.",
        "Một tuần làm việc 7 ngày, 1 tuần được 1 ngày nghỉ.",
      ],
      workingTimeDescription:
          "Bạn có thể linh hoạt chọn ca/ngày làm việc theo thời gian rảnh của mình.",
      salaryDescription: [
        "30.000VND/giờ",
      ],
      salaryDetail:
          "Thu nhập thực lãnh(chưa tính thuế TNCN nếu có).\nThanh toán lương vào ngày 10 hằng tháng.",
      jobOpportunity: "Giữ xe cho khách của quán",
      jobResponsbilities: [
        "Nhanh nhẹn, siêng năng",
      ],
      workingPlace:
          "Quán cơm ABC, Số 50, đường Hồ Việt Hương, Hiệp Phú , Quận 9",
      covidPassport: "Level 3: Đã tiêm 2 mũi vacxin hoặc F0 đã khỏi bệnh.",
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Trung tâm Gia Sư",
      time: "30 - 12 - 2021",
      job: "Gia Sư AV",
      city: "Quận Phú Nhuận",
      sallary: "4-5Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Part-time",
      ],
      mainCriteria: "Part-time",
      employee: "15 người",
      workingTime: [
        "Một tuần dạy học 3 ngày, một ngày ít nhất 3 tiếng",
      ],
      workingTimeDescription: "Thời gian biểu dạy học do học sinh yêu cầu.",
      salaryDescription: [
        "Fulltime: 45.000VND/giờ",
      ],
      salaryDetail:
          "Thu nhập thực lãnh(chưa tính thuế TNCN nếu có).\nThanh toán lương vào ngày 15 hằng tháng.",
      jobOpportunity:
          "Gia sự dạy AV cho học sinh cấp 2. Có thể dạy tại nhà hoặc Online, thời khóa biểu do học sinh yêu cầu",
      jobResponsbilities: [
        "Có bằng sư phạm ngành AV hoặc sinh viên năm 3 \ntrở lên thuộc ngành ngôn ngữ anh",
        "Thân thiện, Ngoại hình ưa nhìn",
      ],
      workingPlace: "Tùy thuộc vào địa chỉ của học sinh",
      covidPassport: "Level 3: Đã tiêm 2 mũi vacxin hoặc F0 đã khỏi bệnh.",
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
];
List<Company> recentHistoryList = [
  Company(
      companyName: "Cafe ABC",
      time: "30 - 12 - 2021",
      type: "Đang chờ",
      job: "Nhân Viên Phục Vụ",
      city: "Lê Văn Việt, Quận 9",
      sallary: "4-5Tr/Tháng",
      image: "assets/nike-Logo.png",
      tag: [
        "Full Time",
        "Part-time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      workingTime: [
        "Ca làm: ca 1 7:00-15:00, ca 2 15:00-23:00",
        "Fulltime: làm việc 7 ngày trong tuần, 1 tuần được 1 ngày nghỉ",
        "Part-time: làm việc ít nhất 3 ngày trong tuần",
      ],
      workingTimeDescription:
          "Bạn có thể linh hoạt chọn ca/ngày làm việc theo thời gian rảnh của mình.",
      salaryDescription: [
        "Fulltime: 25.000VND/giờ",
        "Part-time: 20.000VND/giờ"
      ],
      salaryDetail:
          "Thu nhập thực lãnh(chưa tính thuế TNCN nếu có).\nThanh toán lương vào ngày 5 và 20 hằng tháng.",
      jobOpportunity:
          "Nhân viên phục vụ quán cafe, bưng nước và dọn dẹp bàn ghế.",
      jobResponsbilities: [
        "Nhanh nhẹn, tháo vát, thân thiện",
        "Ngoại hình ưa nhìn - Ưu tiên nữ"
      ],
      workingPlace: "Quán Cafe ABC, Số 123, Lê Văn Việt, Quận 9",
      covidPassport: "Level 3: Đã tiêm 2 mũi vacxin hoặc F0 đã khỏi bệnh.",
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Quán Cơm ABC",
      time: "30 - 12 - 2021",
      type: "Thành công",
      job: "Bảo vệ giữ xe",
      city: "456, Quang Trung",
      sallary: "5-6Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Full Time",
      ],
      mainCriteria: "Full Time",
      employee: "15 người",
      workingTime: [
        "Ca làm: ca 1 6:00-14:00, ca 2 14:00-22:00.",
        "Một tuần làm việc 7 ngày, 1 tuần được 1 ngày nghỉ.",
      ],
      workingTimeDescription:
          "Bạn có thể linh hoạt chọn ca/ngày làm việc theo thời gian rảnh của mình.",
      salaryDescription: [
        "30.000VND/giờ",
      ],
      salaryDetail:
          "Thu nhập thực lãnh(chưa tính thuế TNCN nếu có).\nThanh toán lương vào ngày 10 hằng tháng.",
      jobOpportunity: "Giữ xe cho khách của quán",
      jobResponsbilities: [
        "Nhanh nhẹn, siêng năng",
      ],
      workingPlace:
          "Quán cơm ABC, Số 50, đường Hồ Việt Hương, Hiệp Phú , Quận 9",
      covidPassport: "Level 3: Đã tiêm 2 mũi vacxin hoặc F0 đã khỏi bệnh.",
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Trung tâm Gia Sư",
      time: "30 - 12 - 2021",
      type: "Đã Hủy",
      job: "Gia Sư AV",
      city: "Quận Phú Nhuận",
      sallary: "5-7Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Part-time",
      ],
      mainCriteria: "Part-time",
      employee: "15 người",
      workingTime: [
        "Một tuần dạy học 3 ngày, một ngày ít nhất 3 tiếng",
      ],
      workingTimeDescription: "Thời gian biểu dạy học do học sinh yêu cầu.",
      salaryDescription: [
        "Fulltime: 45.000VND/giờ",
      ],
      salaryDetail:
          "Thu nhập thực lãnh(chưa tính thuế TNCN nếu có).\nThanh toán lương vào ngày 15 hằng tháng.",
      jobOpportunity:
          "Gia sự dạy AV cho học sinh cấp 2. Có thể dạy tại nhà hoặc Online, thời khóa biểu do học sinh yêu cầu",
      jobResponsbilities: [
        "Có bằng sư phạm ngành AV hoặc sinh viên năm 3 \ntrở lên thuộc ngành ngôn ngữ anh",
        "Thân thiện, Ngoại hình ưa nhìn",
      ],
      workingPlace: "Tùy thuộc vào địa chỉ của học sinh",
      covidPassport: "Level 3: Đã tiêm 2 mũi vacxin hoặc F0 đã khỏi bệnh.",
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
  Company(
      companyName: "Trung tâm Gia Sư",
      time: "30 - 12 - 2021",
      type: "Bị từ chối",
      job: "Gia Sư AV",
      city: "Quận Phú Nhuận",
      sallary: "5-7Tr/Tháng",
      image: "assets/uber-logo-redesign_1x.png",
      tag: [
        "Part-time",
      ],
      mainCriteria: "Part-time",
      employee: "15 người",
      workingTime: [
        "Một tuần dạy học 3 ngày, một ngày ít nhất 3 tiếng",
      ],
      workingTimeDescription: "Thời gian biểu dạy học do học sinh yêu cầu.",
      salaryDescription: [
        "Fulltime: 45.000VND/giờ",
      ],
      salaryDetail:
          "Thu nhập thực lãnh(chưa tính thuế TNCN nếu có).\nThanh toán lương vào ngày 15 hằng tháng.",
      jobOpportunity:
          "Gia sự dạy AV cho học sinh cấp 2. Có thể dạy tại nhà hoặc Online, thời khóa biểu do học sinh yêu cầu",
      jobResponsbilities: [
        "Có bằng sư phạm ngành AV hoặc sinh viên năm 3 \ntrở lên thuộc ngành ngôn ngữ anh",
        "Thân thiện, Ngoại hình ưa nhìn",
      ],
      workingPlace: "Tùy thuộc vào địa chỉ của học sinh",
      covidPassport: "Level 3: Đã tiêm 2 mũi vacxin hoặc F0 đã khỏi bệnh.",
      aboutCompany: [
        "Địa chỉ : 123, Lê Văn Việt, Quận 9",
        "Điện thoại : 012121212",
        "E-mail: abc@gmail.com"
      ]),
];
