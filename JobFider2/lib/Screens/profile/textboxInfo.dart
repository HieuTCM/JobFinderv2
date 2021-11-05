// // ignore_for_file: deprecated_member_use

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class InfoTextBox extends StatefulWidget {
//   const InfoTextBox({
//     Key? key,
//     required this.textField,
//     required this.placeHolderField,
//     required this.isPasswordField,
//     required this.isNumberField,
//   }) : super(key: key);
//   final String textField, placeHolderField;
//   final bool isPasswordField, isNumberField;

//   @override
//   State<InfoTextBox> createState() => InfoTextBoxState();
// }

// bool showPassword = true;
// bool editInfo = true;

// final _controller = TextEditingController();

// class InfoTextBoxState extends State<InfoTextBox> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
//       child: GestureDetector(
//         onTap: () {
//           FocusScope.of(context).unfocus();
//         },
//         child: TextField(
//           textAlign: TextAlign.left,
//           onTap: () {
//             _controller.selection = TextSelection(
//                 baseOffset: widget.placeHolderField.length,
//                 extentOffset: widget.placeHolderField.length);
//           },
//           keyboardType:
//               widget.isNumberField ? TextInputType.number : TextInputType.text,
//           controller: TextEditingController()..text = widget.placeHolderField,
//           readOnly: editInfo,
//           obscureText: widget.isPasswordField ? showPassword : false,
//           decoration: InputDecoration(
//               suffixIcon: widget.isPasswordField
//                   ? IconButton(
//                       onPressed: () {
//                         setState(() {
//                           showPassword = !showPassword;
//                         });
//                       },
//                       icon: Icon(
//                         Icons.remove_red_eye,
//                         color: Colors.grey,
//                       ),
//                     )
//                   : IconButton(
//                       onPressed: () {
//                         setState(() {
//                           editInfo = !editInfo;
//                         });
//                       },
//                       icon: Icon(
//                         Icons.mode_edit_outline_outlined,
//                         color: Colors.grey,
//                       ),
//                     ),
//               contentPadding: EdgeInsets.only(bottom: 20, top: 20, left: 20),
//               labelText: widget.textField,
//               floatingLabelBehavior: FloatingLabelBehavior.always,
//               border: OutlineInputBorder(),
//               //hintText: widget.placeHolderField,
//               hintStyle: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               )),
//         ),
//       ),
//     );
//   }
// }
