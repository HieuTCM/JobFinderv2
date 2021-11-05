// // ignore_for_file: deprecated_member_use

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:job/constants.dart';
// import 'package:image_picker/image_picker.dart';

// class covidTestMenu extends StatefulWidget {
//   const covidTestMenu({
//     Key? key,
//     required this.option,
//   }) : super(key: key);
//   final int option;

//   @override
//   State<covidTestMenu> createState() => _covidTestMenuState();
// }

// class _covidTestMenuState extends State<covidTestMenu> {
//   late int _value = 1;
//   bool value = false;
//   DateTime date = DateTime.now();
//   String dateString = "";
//   Future<Null> selectDatePicker(BuildContext) async {
//     final DateTime? picked = await showDatePicker(
//         context: context,
//         initialDate: date,
//         firstDate: DateTime(2000),
//         lastDate: date);
//     if (picked != null) {
//       setState(() {
//         dateString = "${picked.day}/${picked.month}/${picked.year}";
//       });
//     }
//   }

//   final imagePicker = ImagePicker();
//   Future getImage() async {
//     final image = await imagePicker.getImage(source: ImageSource.camera);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(20),
//       margin: EdgeInsets.only(top: 10, bottom: 10),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.all(
//           Radius.circular(10),
//         ),
//       ),
//       child: widget.option == 1
//           ? Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(children: [
//                   Text("Bạn đã xét nghiệm theo hình thức nào?",
//                       style: kSubtitleStyle.copyWith(
//                           color: Colors.black, fontWeight: FontWeight.bold)),
//                 ]),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Row(
//                   children: [
//                     Radio(
//                         value: 1,
//                         groupValue: _value,
//                         activeColor: Colors.orange,
//                         onChanged: (value) {
//                           setState(() {
//                             _value = 1;
//                           });
//                         }),
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     Text("Xét nghiệm PCR")
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Radio(
//                         value: 2,
//                         groupValue: _value,
//                         activeColor: Colors.orange,
//                         onChanged: (value) {
//                           setState(() {
//                             _value = 2;
//                           });
//                         }),
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     Text("Test nhanh bởi chuyên viên y tế")
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   children: [
//                     Radio(
//                         value: 3,
//                         groupValue: _value,
//                         activeColor: Colors.orange,
//                         onChanged: (val) {
//                           setState(() {
//                             this._value = 3;
//                           });
//                         }),
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     Text("Test nhanh tự làm")
//                   ],
//                 ),
//               ],
//             )
//           : widget.option == 2
//               ? Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(children: [
//                       Text("Kết quả xét nghiệm?",
//                           style: kSubtitleStyle.copyWith(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold)),
//                     ]),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Row(
//                       children: [
//                         Radio(
//                             value: 1,
//                             groupValue: _value,
//                             activeColor: Colors.orange,
//                             onChanged: (value) {
//                               setState(() {
//                                 _value = 1;
//                               });
//                             }),
//                         SizedBox(
//                           width: 10.0,
//                         ),
//                         Text("Âm tính")
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         Radio(
//                             value: 2,
//                             groupValue: _value,
//                             activeColor: Colors.orange,
//                             onChanged: (value) {
//                               setState(() {
//                                 _value = 2;
//                               });
//                             }),
//                         SizedBox(
//                           width: 10.0,
//                         ),
//                         Text("Dương tính")
//                       ],
//                     ),
//                   ],
//                 )
//               : widget.option == 3
//                   ? Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(children: [
//                           Text("Ngày thực hiện xét nghiệm",
//                               style: kSubtitleStyle.copyWith(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.bold)),
//                         ]),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         TextField(
//                           enabled: true,
//                           controller: TextEditingController()
//                             ..text = dateString.toString(),
//                           textAlign: TextAlign.left,
//                           decoration: InputDecoration(
//                             suffixIcon: IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   selectDatePicker(context);
//                                 });
//                               },
//                               icon: Icon(
//                                 Icons.calendar_today,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                             contentPadding:
//                                 EdgeInsets.only(bottom: 20, top: 20, left: 20),
//                             border: OutlineInputBorder(),
//                             labelText: "Chọn ngày xét nghiệm",
//                             floatingLabelBehavior: FloatingLabelBehavior.always,
//                           ),
//                         ),
//                       ],
//                     )
//                   : widget.option == 4
//                       ? Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(children: [
//                               Text("Hình ảnh kết quả xét nghiệm",
//                                   style: kSubtitleStyle.copyWith(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold)),
//                             ]),
//                             SizedBox(
//                               height: 15,
//                             ),
//                             FloatingActionButton(
//                                 onPressed: () {
//                                   getImage();
//                                 },
//                                 backgroundColor: Colors.orange,
//                                 child: Icon(Icons.camera_alt)),
//                           ],
//                         )
//                       : widget.option == 5
//                           ? Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 ListTile(
//                                   leading: Checkbox(
//                                       value: value,
//                                       onChanged: (value) {
//                                         setState(() {
//                                           this.value = value!;
//                                         });
//                                       }),
//                                   title: Text(
//                                       "Tôi cam kết những thông tin trên là đúng sự thật"),
//                                 ),
//                               ],
//                             )
//                           : null,
//     );
//   }
// }
