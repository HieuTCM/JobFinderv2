import 'package:flutter/material.dart';
import 'package:job/Screens/profile/profilePic.dart';
import 'package:job/Screens/profile/textboxInfo.dart';
import 'package:job/constants.dart';
import 'package:job/models/user.dart';
import 'package:job/provider/FindJob_Provider.dart';

class EditProfileBody extends StatefulWidget {
  final String username;
  const EditProfileBody({Key? key, required this.username}) : super(key: key);
  @override
  State<EditProfileBody> createState() => _EditProfileBodyState(this.username);
}

bool _showPassword = true;
bool _editFullName = true;
bool _editAge = true;
bool _editPhone = true;
bool _editEmail = true;
bool _editAddress = true;
final _nameCon = TextEditingController();
final _ageCon = TextEditingController();
final _phoneCon = TextEditingController();
final _emailCon = TextEditingController();
final _addressCon = TextEditingController();

class _EditProfileBodyState extends State<EditProfileBody> {
  String username;
  var id, password;
    bool valueq1=true;
    bool valueq2=false;

  _EditProfileBodyState(this.username);
  bool? gender=true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.person,
              color: Colors.black,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "Thông tin cá nhân",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          height: 15,
          thickness: 2,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: FutureBuilder<User>(
            future: FindJobProvider.fetchUserByEmail(this.username),
            builder: (context, snapshot){
              if(snapshot.hasError)
                {
                  print('lỗi ở detail user '+snapshot.error.toString());
                }
              if(snapshot.hasData){
                id=snapshot.data!.id;
                password=snapshot.data!.password;
                gender=snapshot.data!.gender;
                return Column(
                  children: [
                    TextField(
                      textAlign: TextAlign.left,
                      onTap: () {
                        _nameCon.selection = TextSelection(
                            baseOffset: _nameCon.text.length,
                            extentOffset: _nameCon.text.length);
                      },
                      keyboardType: TextInputType.text,
                      controller: _nameCon..text = snapshot.data!.fullname.toString(),
                      readOnly: _editFullName,
                      obscureText: false,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _editFullName = !_editFullName;
                              });
                            },
                            icon: Icon(
                              Icons.mode_edit_outline_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
                          labelText: "Họ và Tên",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
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
                    TextField(
                      textAlign: TextAlign.left,
                      onTap: () {
                        _nameCon.selection = TextSelection(
                            baseOffset: _ageCon.text.length,
                            extentOffset: _ageCon.text.length);
                      },
                      keyboardType: TextInputType.number,
                      controller: _ageCon..text = snapshot.data!.age.toString(),
                      readOnly: _editAge,
                      obscureText: false,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _editAge = !_editAge;
                              });
                            },
                            icon: Icon(
                              Icons.mode_edit_outline_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
                          labelText: "Tuổi",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 300.0),
                        child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Giới tính',
                                    style: kTitleStyle,
                                  ),
                                ]))),
                    Container(
                      margin: EdgeInsets.only(right: 18.0),
                      child: Row(
                        children: <Widget>[
                          Radio(
                            value: false,
                            groupValue: gender,
                            onChanged: (bool? value) {
                              setState(() {
                                gender = value!;
                              });
                            },
                          ),
                          Text('Nam'),
                          SizedBox(
                            width: 50,
                          ),
                          Radio(
                            value: true,
                            groupValue: gender,
                            onChanged: (bool? value) {
                              setState(() {
                                gender = value!;
                              });
                            },
                          ),
                          Text('Nữ'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      textAlign: TextAlign.left,
                      onTap: () {
                        _nameCon.selection = TextSelection(
                            baseOffset: _phoneCon.text.length,
                            extentOffset: _phoneCon.text.length);
                      },
                      keyboardType: TextInputType.number,
                      controller: _phoneCon..text = snapshot.data!.phonenumber.toString(),
                      readOnly: _editPhone,
                      obscureText: false,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _editPhone = !_editPhone;
                              });
                            },
                            icon: Icon(
                              Icons.mode_edit_outline_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
                          labelText: "Số điện thoại",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
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
                    TextField(
                      textAlign: TextAlign.left,
                      onTap: () {
                        _nameCon.selection = TextSelection(
                            baseOffset: _emailCon.text.length,
                            extentOffset: _emailCon.text.length);
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailCon..text = snapshot.data!.email.toString(),
                      readOnly: _editEmail,
                      obscureText: false,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _editEmail = !_editEmail;
                              });
                            },
                            icon: Icon(
                              Icons.mode_edit_outline_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
                          labelText: "Email",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
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
                    TextField(
                      textAlign: TextAlign.left,
                      onTap: () {
                        _nameCon.selection = TextSelection(
                            baseOffset: _addressCon.text.length,
                            extentOffset: _addressCon.text.length);
                      },
                      keyboardType: TextInputType.number,
                      controller: _addressCon..text = snapshot.data!.address.toString(),
                      readOnly: _editAddress,
                      obscureText: false,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _editAddress = !_editAddress;
                              });
                            },
                            icon: Icon(
                              Icons.mode_edit_outline_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
                          labelText: "Địa chỉ",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                  ],
                );
              }else{
                return Center(child: CircularProgressIndicator(color: Colors.orangeAccent,));
              }
            },
          ),
        ),
        RaisedButton(
          onPressed: () {
            User user=new User(id: id,fullname: _nameCon.text,address: _addressCon.text, gender: gender, age: int.parse(_ageCon.text),
                phonenumber: int.parse(_phoneCon.text), email: _emailCon.text, userName: this.username, password: password);
            Future<String> result=FindJobProvider.updateUser(user, id);
            result.then((value){
              _showToast(context, value);
              print(value);
              print(_nameCon.text);
            });
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          textColor: Colors.white,
          padding: const EdgeInsets.all(0),
          child: Container(
            alignment: Alignment.center,
            height: 50.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: new LinearGradient(colors: [
                  Color.fromARGB(255, 255, 136, 34),
                  Color.fromARGB(255, 255, 177, 41)
                ])),
            padding: const EdgeInsets.all(0),
            child: Text(
              "Cập nhật thông tin",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }

  void _showToast(BuildContext context, String msg) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text('$msg'),
        action: SnackBarAction(
            label: 'Got it', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

}
