import 'package:flutter/material.dart';
import 'package:zameer_project/ui/employee_process_flow/account/reset_password.dart';
import 'package:zameer_project/ui/employee_process_flow/account/update_profile.dart';
import 'package:zameer_project/ui/employee_process_flow/account/view_profile.dart';

import '../../../reusable/alert_dialog.dart';
import '../employee_home.dart';
import 'list_of_assign_courses.dart';
import 'list_of_assign_journey.dart';

class Join_Assigned_Course extends StatelessWidget {
  const Join_Assigned_Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Image.asset(
                'images/ptcl_logo.png',
                width: 100,
              ),
            ]),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Join Assigned Course ',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            emp_button(
              txt_clr: Colors.white,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => List_Of_Assigned_Courses()));
              },
              text: 'List of Assigned Courses',
              color: Colors.yellow,
            ),
            SizedBox(
              height: 20,
            ),
            emp_button(
              txt_clr: Colors.white,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => List_Of_Assigned_Journey()));
              },
              text: 'List of Assigned Journey',
              color: Colors.yellow,
            ),
            SizedBox(
              height: 20,
            ),
            emp_button(
              txt_clr: Colors.white,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert_dialog(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Employee_home()));
                        },
                        text1: 'Course',
                        text2: 'Joining',
                        text3: 'Pending',
                        btn_color: Colors.green,
                        btn_text: 'Okay',
                        btn_txt_clr: Colors.white,
                        dialog_bck_clr: Colors.amber,
                        icon_bck_clr: Colors.white,
                        icon_img: 'images/tick_image.png',
                      );
                    });
              },
              text: 'Join Course/ Learning journey',
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
