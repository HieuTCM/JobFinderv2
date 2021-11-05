// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/profile/skill.dart';

class skillMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        skillCart(skill: "Team Work"),
        skillCart(skill: "Tiếng anh"),
        skillCart(skill: "Giao tiếp"),
      ],
    );
  }
}
