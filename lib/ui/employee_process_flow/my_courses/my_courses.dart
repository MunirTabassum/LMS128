import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zameer_project/reusable/reuseable_button.dart';
import 'package:zameer_project/ui/employee_process_flow/my_courses/any_particular_course/any_particular_course.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
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
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            const Text(
              'My Courses',
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
                    hint: Text('List of Running Courses',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
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
                text: 'Open Course',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnyParticularCourse()));
                },
                color: Colors.lightGreen,
                txt_clr: Colors.white),
          ],
        ),
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
