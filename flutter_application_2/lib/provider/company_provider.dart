
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'dart:convert';

import 'package:job/models/data1.dart';


Future<List<Job>?> parseCompanys(String responseBody) async {
  var list = json.decode(responseBody) as List<dynamic>;
  List<Job> companyList = list.map((model) => Job.fromJson(model)).toList();
  return companyList;
}

Future<List<Job>> fetchCompanys() async{
  final response = await http.get(Uri.parse('http://3.129.62.14/api/Job/get'));
  if (response.statusCode == 200) {
    var jsonData=json.decode(response.body);
    List<Job> companys=[];
    for(var u in jsonData)
    {
      Job company = Job.fromJson(u);
      companys.add(company);
    }
    print('Co lay dc data: '+companys.length.toString());
    return companys;
  } else {
    throw Exception(
        'Lỗi gùi ${response.statusCode}');
  }
}
