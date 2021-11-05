
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:job/models/CovidPassport.dart';
import 'package:job/models/CovidTestPaper.dart';
import 'package:job/models/JobSeekerEducation.dart';
import 'package:job/models/JobSeekerWorkExperience.dart';
import 'package:job/models/MarkJob.dart';
import 'package:job/models/UserJob.dart';
import 'package:job/models/data1.dart';
import 'package:job/models/user.dart';


class FindJobProvider
{
  static const String _mainUrl='http://3.129.62.14/api';
  static const String _login='/User/login?';
  static const String _getUserByUsername='/User/getByUsername?username=';
  static const String _postUser='/User/add';
  static const String _putUser='/User/update';
  static const String _getCovidPassport='/CovidPassport/get?userID=';
  static const String _postCovidPassport='/CovidPassport/add';
  static const String _putCovidPassport='/CovidPassport/update';
  static const String _getCovidTestPaper='/CovidTestPaper/get?userID=';
  static const String _postCovidTestPaper='/CovidTestPaper/add';
  static const String _getJobSeekerEducation='/JobSeekerEducation/get?userID=';
  static const String _postJobSeekerEducation='/JobSeekerEducation/add';
  static const String _getJobSeekerWorkExperience='/JobSeekerWorkExperience/get?userID=';
  static const String _postJobSeekerWorkExperience='/JobSeekerWorkExperience/add';
  static const String _getUserJob='/UserJob/get?userID=';
  static const String _postUserJob='/UserJob/add';
  static const String _putUserJob='/UserJob/update';
  static const String _getJobByID='/Job/find/';
  static const String _postMarkJob='/MarkJob/add';
  static const String _getMarkJobByUserID='/MarkJob/get?userID=';
  static const String _deleteMarkJob='/MarkJob/delete/';


  static Map<String, String> _header = {
    'Content-Type': 'application/json; charset=UTF-8',
    'Accept': 'application/json',
    'Access-Control-Allow-Origin': '*', // Required for CORS support to work
    'Access-Control-Allow-Headers': 'Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale',
    'Access-Control-Allow-Methods': 'POST, OPTIONS',
    "Access-Control-Allow-Headers": "Access-Control-Allow-Origin, Accept",
  };

  static Future<User> fetchUserByID(int id) async {
    User user=new User();
    try{
      final response = await http.get(
          Uri.parse('$_mainUrl'+'$_getUserByUsername'+'$id'),
          headers: _header
      );
      if (response.statusCode == 200) {
        user = User.fromJson(json.decode(response.body));
      } else {
        throw Exception(
            'Lỗi status gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi gùi '+e.message);
    }
    return user;
  }
  static Future<User> fetchUserByEmail(String username) async {
    User user=new User();
    try{
      final response = await http.get(
          Uri.parse('$_mainUrl'+'$_getUserByUsername'+username),
          headers: _header
      );
      if (response.statusCode == 200) {
        user = User.fromJson(json.decode(response.body));
      } else {
        throw Exception(
            'Lỗi status gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi gùi '+e.message);
    }
    return user;
  }
  static Future<String> createUser(User user) async {
    String result='';
    var userBody= json.encode(user.toJson());
    try{
      final response = await http.post(
        Uri.parse('$_mainUrl'+'$_postUser'),
        headers: _header,
        body: userBody,
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<String> updateUser(User user, int id) async {
    String result='';
    var userBody= json.encode(user.toJson());
    try{
      final response = await http.put(
        Uri.parse('$_mainUrl'+'$_putUser'),
        headers: _header,
        body: userBody,
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<List<CovidPassport>> fetchCovidPassport(int userID) async {
    final response = await http.get(
        Uri.parse('$_mainUrl'+'$_getCovidPassport'+'$userID'),
        headers: _header
    );
    if (response.statusCode == 200) {
      var jsonData=json.decode(response.body);
      List<CovidPassport> list=[];
      for(var u in jsonData)
      {
        CovidPassport covidPassport = CovidPassport.fromJson(u);
        list.add(covidPassport);
      }
      print('Co lay dc data: '+list.length.toString());
      return list;
    } else {
      throw Exception(
          'Lỗi gùi ${response.statusCode}');
    }
  }
  static Future<String> createCovidPassport(CovidPassport covidPassport) async {
    String result='';
    var userBody= json.encode(covidPassport.toJson());
    try{
      final response = await http.post(
        Uri.parse('$_mainUrl'+'$_postCovidPassport'),
        headers: _header,
        body: userBody,
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<String> updateCovidPassport(CovidPassport covidPassport) async {
    String result='';
    var userBody= json.encode(covidPassport.toJson());
    try{
      final response = await http.put(
        Uri.parse('$_mainUrl'+'$_putCovidPassport'),
        headers: _header,
        body: userBody,
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<List<CovidTestPaper>> fetchCovidTestPaper(int userID) async {
    final response = await http.get(
        Uri.parse('$_mainUrl'+'$_getCovidTestPaper'+'$userID'),
        headers: _header
    );
    if (response.statusCode == 200) {
      var jsonData=json.decode(response.body);
      List<CovidTestPaper> list=[];
      for(var u in jsonData)
      {
        CovidTestPaper covidTestPaper = CovidTestPaper.fromJson(u);
        list.add(covidTestPaper);
      }
      print('Co lay dc data: '+list.length.toString());
      return list;
    } else {
      throw Exception(
          'Lỗi gùi ${response.statusCode}');
    }
  }
  static Future<String> createCovidTestPaper(CovidTestPaper covidTestPaper) async {
    String result='';
    var userBody= json.encode(covidTestPaper.toJson());
    try{
      final response = await http.post(
        Uri.parse('$_mainUrl'+'$_postCovidTestPaper'),
        headers: _header,
        body: userBody,
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<List<JobSeekerEducation>> fetchJobSeekerEducation(int userID) async {
    final response = await http.get(
        Uri.parse('$_mainUrl'+'$_getJobSeekerEducation'+'$userID'),
        headers: _header
    );
    if (response.statusCode == 200) {
      var jsonData=json.decode(response.body);
      List<JobSeekerEducation> list=[];
      for(var u in jsonData)
      {
        JobSeekerEducation jobSE = JobSeekerEducation.fromJson(u);
        list.add(jobSE);
      }
      print('Co lay dc data: '+list.length.toString());
      return list;
    } else {
      throw Exception(
          'Lỗi gùi ${response.statusCode}');
    }
  }
  static Future<String> createJobSeekerEducation(JobSeekerEducation seekerEducation) async {
    String result='';
    var userBody= json.encode(seekerEducation.toJson());
    try{
      final response = await http.post(
        Uri.parse('$_mainUrl'+'$_postJobSeekerEducation'),
        headers: _header,
        body: userBody,
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<List<JobSeekerWorkExperience>> fetchJobSeekerWorkExperience(int userID) async {
    final response = await http.get(
        Uri.parse('$_mainUrl'+'$_getJobSeekerWorkExperience'+'$userID'),
        headers: _header
    );
    if (response.statusCode == 200) {
      var jsonData=json.decode(response.body);
      List<JobSeekerWorkExperience> list=[];
      for(var u in jsonData)
      {
        JobSeekerWorkExperience jobSWE = JobSeekerWorkExperience.fromJson(u);
        list.add(jobSWE);
      }
      print('Co lay dc data: '+list.length.toString());
      return list;
    } else {
      throw Exception(
          'Lỗi gùi ${response.statusCode}');
    }
  }
  static Future<String> createJobSeekerWorkExperience(JobSeekerWorkExperience workExperience) async {
    String result='';
    var userBody= json.encode(workExperience.toJson());
    try{
      final response = await http.post(
        Uri.parse('$_mainUrl'+'$_postJobSeekerWorkExperience'),
        headers: _header,
        body: userBody,
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<User>Login(String username, password) async {
    User user =new User();
    final response = await http.get(
        Uri.parse('$_mainUrl'+'$_login'+'username='+'$username'+'&password='+'$password'),
        headers:_header
    );
    if (response.statusCode == 200) {
      user = User.fromJson(json.decode(response.body));
    } else {
      throw Exception(
          'Lỗi gùi ${response.statusCode}');
    }
    return user;
  }
  static Future<List<UserJob>> fetchUserJob(int userID) async {
    final response = await http.get(
        Uri.parse('$_mainUrl'+'$_getUserJob'+'$userID'),
        headers: _header
    );
    if (response.statusCode == 200) {
      var jsonData=json.decode(response.body);
      List<UserJob> list=[];
      for(var u in jsonData)
      {
        UserJob userJob = UserJob.fromJson(u);
        list.add(userJob);
      }
      print('Co lay dc data: '+list.length.toString());
      return list;
    } else {
      throw Exception(
          'Lỗi gùi ${response.statusCode}');
    }
  }
  static Future<String> createUserJob(UserJob userJob) async {
    String result='';
    var userBody= json.encode(userJob.toJson());
    try{
      final response = await http.post(
        Uri.parse('$_mainUrl'+'$_postUserJob'),
        headers: _header,
        body: userBody,
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<String> updateUserJob(UserJob userJob, int id) async {
    String result='';
    var userBody= json.encode(userJob.toJson());
    try{
      final response = await http.put(
        Uri.parse('$_mainUrl'+'$_putUserJob'),
        headers: _header,
        body: userBody,
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<Job> fetchJobById(int id) async {
    Job job =new Job();
    try{
      final response = await http.get(
          Uri.parse('$_mainUrl'+'$_getJobByID'+'$id'),
          headers: _header
      );
      if (response.statusCode == 200) {
        job = Job.fromJson(json.decode(response.body));
      } else {
        throw Exception(
            'Lỗi status gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi gùi '+e.message);
    }
    return job;
  }
  static Future<String> createMarkJob(MarkJob markJob) async {
    String result='';
    var userBody= json.encode(markJob.toJson());
    try{
      final response = await http.post(
        Uri.parse('$_mainUrl'+'$_postMarkJob'),
        headers: _header,
        body: userBody,
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<String> deleteMarkJob(int id) async {
    String result='';
    try{
      final response = await http.delete(
        Uri.parse('$_mainUrl'+'$_deleteMarkJob'+'$id'),
        headers: _header
      );
      if (response.statusCode == 200) {
        result=response.body;
      } else {
        throw Exception(
            'Lỗi gùi ${response.statusCode}');
      }
    }on HttpException catch(e)
    {
      print('Lỗi status gùi '+e.message);
    }
    return result;
  }
  static Future<List<MarkJob>> fetchMarkJob(int userID) async {
    final response = await http.get(
        Uri.parse('$_mainUrl'+'$_getMarkJobByUserID'+'$userID'),
        headers: _header
    );
    if (response.statusCode == 200) {
      var jsonData=json.decode(response.body);
      List<MarkJob> list=[];
      for(var u in jsonData)
      {
        MarkJob markJob = MarkJob.fromJson(u);
        list.add(markJob);
      }
      print('Co lay dc data: '+list.length.toString());
      return list;
    } else {
      throw Exception(
          'Lỗi gùi ${response.statusCode}');
    }
  }
}
/*
cần lấy user by username
cần sửa user by userID
cần lấy, thêm covidpassport by userID, khi thêm id thì lấy lenght của list + 1
cần lấy, thêm covidTestPaoer by userID, khi thêm id thì lấy lenght của list + 1
cần lấy (by userID), thêm, sửa JobSeekerEducation
cần lấy (by userID), thêm, sửa JobSeekerWorkExperience
*/