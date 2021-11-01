
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:job/models/CovidPassport.dart';
import 'package:job/models/CovidTestPaper.dart';
import 'package:job/models/JobSeekerEducation.dart';
import 'package:job/models/JobSeekerWorkExperience.dart';
import 'package:job/models/user.dart';


class FindJobProvider
{
    static const String _mainUrl='https://10.0.2.2:5001/api';
    static const String _login='/User/login?';
    static const String _getUserByUsername='/User/getByUsername?username=';
    static const String _postUser='/User/add';
    static const String _putUser='/User/update';
    static const String _getCovidPassport='/CovidPassport/get?userID=';
    static const String _putCovidPassport='/CovidPassport/update';
    static const String _getCovidTestPaper='/CovidTestPaper/get?userID=';
    static const String _postCovidTestPaper='/CovidTestPaper/add';
    static const String _getJobSeekerEducation='/JobSeekerEducation/get?userID=';
    static const String _getJobSeekerWorkExperience='/JobSeekerWorkExperience/get?userID=';
    static const String _postJobSeekerWorkExperience='/JobSeekerWorkExperience/add';


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
    static Future<String>Login(String username, password) async {
    final response = await http.get(
        Uri.parse('$_mainUrl'+'$_login'+'username='+'$username'+'&password='+'$password'),
        headers:_header
    );
    if (response.statusCode == 200) {
      String result=response.body.toString();
      return result;
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