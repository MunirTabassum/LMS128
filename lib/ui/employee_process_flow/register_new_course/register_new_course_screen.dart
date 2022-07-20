import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zameer_project/reusable/reuseable_button.dart';
import 'package:zameer_project/ui/employee_process_flow/register_new_course/find_course.dart';

import '../../../reusable/alert_dialog.dart';
import '../employee_home.dart';

class RegisterNewCourse extends StatefulWidget {
  const RegisterNewCourse({Key? key}) : super(key: key);

  @override
  State<RegisterNewCourse> createState() => _RegisterNewCourseState();
}

class _RegisterNewCourseState extends State<RegisterNewCourse> {
  final trainer_items = ['Flutter', 'React Native', 'WordPress', 'Shopify'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          const Text(
            'Register New Course',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(16),
              width: 360,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87, width: 2.0)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: Text('List of Courses',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  value: value,
                  iconSize: 36,
                  icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                  isExpanded: true,
                  items: trainer_items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value = value),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 25,
          ),
          button(
              text: 'Join Course',
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
              color: Colors.lightGreen,
              txt_clr: Colors.white),
          button(
              text: 'Find a Course',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Find_Course()));
              },
              color: Colors.lightGreen,
              txt_clr: Colors.white),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
