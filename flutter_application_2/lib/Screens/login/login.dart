import 'package:flutter/material.dart';
import 'package:job/Screens/register/register.dart';
import 'package:job/components/background.dart';
import 'package:job/models/user.dart';
import 'package:job/provider/FindJob_Provider.dart';
import 'package:job/views/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

late int userId;

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  var _usernameError = "Username is wrong";
  var _passwordError = "Password is wrong";
  var _userInvalid = false;
  var _passInvalid = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "ĐĂNG NHẬP",
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
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: "Tài khoản *",
                    errorText: _userInvalid ? _usernameError : null,
                  ),
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
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "Mật khẩu *",
                    errorText: _passInvalid ? _passwordError : null,
                  ),
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
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  "Quên mật khẩu?",
                  style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => onLogin(
                                  username: _usernameController.text.trim(),
                                  password: _passwordController.text.trim())));
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
                      "ĐĂNG NHẬP",
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
                            builder: (context) => RegisterScreen()))
                  },
                  child: Text(
                    "Chưa có tài khoản? Đăng ký",
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
    );
  }
}

class onLogin extends StatefulWidget {
  final String username;
  final String password;
  const onLogin({Key? key, required this.username, required this.password})
      : super(key: key);

  @override
  _onLoginState createState() => _onLoginState(this.username, this.password);
}

late String username1 = '';

class _onLoginState extends State<onLogin> {
  String username;
  String password;

  _onLoginState(this.username, this.password);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<User>(
          future: FindJobProvider.Login(username, password),
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            if (snapshot.hasError) {
              print('Lỗi nè trùiii ' + snapshot.error.toString());
            }
            if (snapshot.hasData) {
              print(snapshot.data!.userName);
              username1 = username;
              userId = snapshot.data!.id!;
              if (snapshot.data!.userName!.contains(username)) {
                return Home(username: username1);
              } else {
                return Container(
                  child: AlertDialog(
                    title: const Text('Đăng Nhập Không Thành Công'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: const <Widget>[
                          Text('Sai tài khoản hoặc mật khẩu.'),
                          Text('Xin vui lòng kiểm tra lại.'),
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Ok luôn nhó!'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                );
              }
            } else {
              return Container(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
