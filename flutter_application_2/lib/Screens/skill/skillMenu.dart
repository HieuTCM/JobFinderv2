// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/Screens/skill/skillBody.dart';
import 'package:job/models/skill.dart';

class SkillMenu extends StatefulWidget {
  final String skillitem;
  final int skillPos;
  final bool isAdd;

  const SkillMenu(
      {Key? key,
      required this.skillitem,
      required this.skillPos,
      required this.isAdd})
      : super(key: key);

  @override
  State<SkillMenu> createState() => _SkillMenuState();
}

List<int> pos = posList;

class _SkillMenuState extends State<SkillMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.only(right: 8, bottom: 5),
          child: widget.isAdd
              ? FlatButton(
                  onPressed: () {
                    widget.isAdd
                        ? setState(() {
                            bool test = true;
                            if (pos.length == 0) {
                              pos.add(widget.skillPos);
                            } else {
                              for (var i = 0; i < pos.length; i++) {
                                if (pos[i] == widget.skillPos) {
                                  test = false;
                                  break;
                                }
                              }
                              test ? pos.add(widget.skillPos) : null;
                            }
                          })
                        : null;
                  },
                  child: Text(widget.skillitem),
                  color: Colors.grey[350],
                )
              : FlatButton.icon(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    print(widget.isAdd);
                    widget.isAdd
                        ? null
                        : setState(() {
                            pos.removeAt(widget.skillPos);
                          });
                  },
                  label: Text(widget.skillitem),
                  color: Colors.grey[350],
                )),
    );
  }
}
