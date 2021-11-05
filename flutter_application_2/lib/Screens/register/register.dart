import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/login/login.dart';
import 'package:job/components/background.dart';
import 'package:job/models/user.dart';
import 'package:job/provider/FindJob_Provider.dart';
import 'package:job/views/home.dart';

final _nameCon = TextEditingController();
final _usenameCon = TextEditingController();
final _phoneCon = TextEditingController();
final _passCon = TextEditingController();
final _repassCon = TextEditingController();

class RegisterScreen extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Background(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "ĐĂNG KÝ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA),
                        fontSize: 36),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Họ và tên *"),
                    controller: _nameCon,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Vui lòng không được để trống";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: "Số điện thoại *"),
                    controller: _phoneCon,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Vui lòng không được để trống";
<<<<<<< HEAD
                      } else if (value.length != 10) {
                        return "Số điện thoại phải 10 số";
                      } else {
=======
                      }
                      else {
>>>>>>> bed4b75206cdd1f95d820bd1d9f66e6cd549cec2
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Tên tài khoản *"),
                    controller: _usenameCon,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Vui lòng không được để trống";
                      }
                      else {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Mật khẩu *"),
                    controller: _passCon,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Vui lòng không được để trống";
                      } else {
                        return null;
                      }
                    },
                    obscureText: true,
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    decoration:
                        InputDecoration(labelText: "Nhập lại mật khẩu *"),
                    controller: _repassCon,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Vui lòng không được để trống";
                      } else if (_passCon.text != _repassCon.text) {
                        return "Không trùng khớp với mật khẩu";
                      } else {
                        return null;
                      }
                    },
                    obscureText: true,
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: RaisedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
<<<<<<< HEAD
                        String password = '';
                        if (_passCon.text == _repassCon.text) {
                          password = _repassCon.text;
                          User user = new User(
                              id: 0,
                              fullname: _nameCon.text,
                              address: 'a',
                              gender: true,
                              age: 0,
                              phonenumber: int.parse(_phoneCon.text),
                              email: 'a',
                              userName: _usenameCon.text,
                              password: password);
                          Future<String> result =
                              FindJobProvider.createUser(user);
                          result.then((value) {
                            print(value);
                            final snackBar = SnackBar(
=======
                        String password='';
                        if(_passCon.text == _repassCon.text){
                          password =_repassCon.text;
                          User user=new User(id: 0,fullname: _nameCon.text,address: 'vui lòng nhập email', gender: true, age: 0,
                              phonenumber: int.parse(_phoneCon.text), email: 'vui lòng nhập địa chỉ', userName: _usenameCon.text, password: password);
                          Future<String> result=FindJobProvider.createUser(user);
                          result.then((value){
                            value.contains("Add Success") ?
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
>>>>>>> bed4b75206cdd1f95d820bd1d9f66e6cd549cec2
                              content: const Text('Đăng kí thành công'),
                              action: SnackBarAction(
                                label: 'Trở lại để login thui nè ^_^',
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                              ),
<<<<<<< HEAD
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
=======
                            ))
                                : value.contains("Phonenumber is aleardy exits") ? _showToast(context, 'Số điện thoại này đã đăng ký') :
                                  value.contains("Username is aleardy exits")  ?   _showToast(context, 'Tên đăng nhập này đã tồn tại') : null;
>>>>>>> bed4b75206cdd1f95d820bd1d9f66e6cd549cec2
                          });
                        } else {}
                      } else {}
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      width: size.width * 0.5,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: new LinearGradient(colors: [
                            Color.fromARGB(255, 255, 136, 34),
                            Color.fromARGB(255, 255, 177, 41)
                          ])),
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "ĐĂNG KÝ",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()))
                    },
                    child: Text(
                      "Đã có tài khoản? Đăng nhập",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2661FA)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _showToast(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      duration: const Duration(seconds: 5),
      action: SnackBarAction(
        label: 'Xin vui lòng kiểm tra lại',
        onPressed: () {},
      ),
    ));
  }
}
