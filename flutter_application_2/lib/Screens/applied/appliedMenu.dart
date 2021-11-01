import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job/models/data.dart';

class appliedMenu extends StatelessWidget {
  final Application application;

  const appliedMenu({Key? key, required this.application}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 14, right: 10, left: 10),
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(application.logo),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      application.position,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      application.company,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )),
              Icon(
                Icons.more_vert,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  // decoration: BoxDecoration(
                  //   color: Colors.grey[300],
                  //   borderRadius: BorderRadius.all(
                  //     Radius.circular(10),
                  //   ),
                  // ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 12),
                    child: Text(
                      application.status,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: application.status == "Đang chờ"
                            ? Colors.yellow[700]
                            : application.status == "Đã được chấp nhận"
                                ? Colors.green[500]
                                : application.status == "Đã Hủy"
                                    ? Colors.red[500]
                                    : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: application.status == "Đang chờ"
                            ? Colors.red
                            : Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          application.status == "Đang chờ" ? 'Hủy' : '',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Expanded(
              //   child: Container(
              //     child: Center(
              //       child: Container(
              //         height: 45,
              //         decoration: BoxDecoration(
              //           color: Colors.grey[300],
              //           borderRadius: BorderRadius.all(
              //             Radius.circular(10),
              //           ),
              //         ),
              //         child: Center(
              //           child: Text(
              //             'Hủy',
              //             style: TextStyle(
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 16,
              //                 color: Colors.red[500]),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
