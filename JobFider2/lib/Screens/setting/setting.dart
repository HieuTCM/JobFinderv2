import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/profile/textboxInfo.dart';
import 'package:job/constants.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 160, 0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: kBlack,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Cài Đặt",
          style: kTitleStyle,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Tài Khoản",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Đổi mật khẩu", 1),
            buildAccountOptionRow(context, "Liên kết mạng xã hội", 2),
            buildAccountOptionRow(context, "Ngôn ngữ và khu vực", 3),
            buildAccountOptionRow(context, "Quyền riêng tư", 4),
            buildAccountOptionRow(context, "Hỗ trợ", 5),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Nhận Thông Báo Qua",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("Thông báo đẩy", value1),
            buildNotificationOptionRow("Email", value2),
          ],
        ),
      ),
    );
  }

  bool value1 = false;
  bool value2 = false;
  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) => setState(() {
                if (title == 'Thông báo đẩy') {
                  this.value1 = val;
                } else {
                  this.value2 = val;
                }
              }),
            ))
      ],
    );
  }

  bool valueq1 = true;
  bool valueq2 = false;
  bool valueq3 = false;
  final _oldPasswordCon = TextEditingController();
  final _new1PasswordCon = TextEditingController();
  final _new2PasswordCon = TextEditingController();
  bool _showOldPassword = true;
  bool _showNew1Password = true;
  bool _showNew2Password = true;
  var _oldPassword = "", _new1Password = "", _new2Password = "";
  var _myOldPassord = "TuyenAhihi";
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GestureDetector buildAccountOptionRow(
      BuildContext context, String title, int type) {
    return GestureDetector(
      onTap: () {
        if (type == 1) {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Form(
                  key: formKey,
                  child: AlertDialog(
                    title: Text(title),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Vui lòng không được để trống";
                            } else if (value != _myOldPassord) {
                              return "Sai mật khẩu";
                            } else {
                              return null;
                            }
                          },
                          textAlign: TextAlign.left,
                          onTap: () {
                            _oldPasswordCon.selection = TextSelection(
                                baseOffset: _oldPasswordCon.text.length,
                                extentOffset: _oldPasswordCon.text.length);
                          },
                          keyboardType: TextInputType.text,
                          controller: _oldPasswordCon..text = _oldPassword,
                          obscureText: _showOldPassword,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showOldPassword = !_showOldPassword;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.grey,
                                ),
                              ),
                              contentPadding: EdgeInsets.only(
                                  bottom: 20, top: 20, left: 20),
                              labelText: "Mật khẩu hiện tại",
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Vui lòng không được để trống";
                            } else {
                              return null;
                            }
                          },
                          textAlign: TextAlign.left,
                          onTap: () {
                            _new1PasswordCon.selection = TextSelection(
                                baseOffset: _new1PasswordCon.text.length,
                                extentOffset: _new1PasswordCon.text.length);
                          },
                          keyboardType: TextInputType.text,
                          controller: _new1PasswordCon..text = _new1Password,
                          obscureText: _showNew1Password,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showNew1Password = !_showNew1Password;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.grey,
                                ),
                              ),
                              contentPadding: EdgeInsets.only(
                                  bottom: 20, top: 20, left: 20),
                              labelText: "Mật khẩu mới",
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Vui lòng không được để trống";
                            } else if (_new1PasswordCon.text !=
                                _new2PasswordCon.text) {
                              return "Mật khẩu xác nhận không khớp";
                            } else {
                              return null;
                            }
                          },
                          textAlign: TextAlign.left,
                          onTap: () {
                            _new2PasswordCon.selection = TextSelection(
                                baseOffset: _new2PasswordCon.text.length,
                                extentOffset: _new2PasswordCon.text.length);
                          },
                          keyboardType: TextInputType.text,
                          controller: _new2PasswordCon..text = _new2Password,
                          obscureText: _showNew2Password,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showNew2Password = !_showNew2Password;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.grey,
                                ),
                              ),
                              contentPadding: EdgeInsets.only(
                                  bottom: 20, top: 20, left: 20),
                              labelText: "Xác nhận mật khẩu mới",
                              border: OutlineInputBorder(),
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ),
                      ],
                    ),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.pop(
                                context,
                              );
                            } else {}
                          },
                          child: Text("Xác nhận")),
                    ],
                  ),
                );
              });
        } else if (type == 2) {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(title),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Liên kết với Facebook'),
                      Text('Liên kết với Instagram'),
                    ],
                  ),
                  actions: [
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Đóng")),
                  ],
                );
              });
        } else if (type == 3) {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(title),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: valueq1,
                        onChanged: (value) => setState(() {
                          this.valueq1 = value!;
                          // this.valueq2 = !value;
                          // this.valueq3 = !value;
                          ;
                        }),
                      ),
                      Text('Tiếng Việt'),
                      SizedBox(
                        width: 50,
                      ),
                      Checkbox(
                        value: valueq2,
                        onChanged: (value) => setState(() {
                          this.valueq2 = value!;
                          // this.valueq1 = !value;
                          // this.valueq3 = !value;
                          ;
                        }),
                      ),
                      Text('English'),
                      SizedBox(
                        width: 50,
                      ),
                      Checkbox(
                        value: valueq3,
                        onChanged: (value) => setState(() {
                          this.valueq3 = value!;
                          // this.valueq1 = !value;
                          // this.valueq2 = !value;
                          ;
                        }),
                      ),
                      Text('日本語'),
                    ],
                  ),
                  actions: [
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Đóng")),
                  ],
                );
              });
        } else if (type == 5) {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(title),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Liên hệ để được hỗ trợ'),
                      Text('Hotline:  0123456789'),
                      Text('Email:  abc@gmail.com'),
                    ],
                  ),
                  actions: [
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Đóng")),
                  ],
                );
              });
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
