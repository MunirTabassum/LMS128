import 'package:flutter/material.dart';
import 'package:zameer_project/ui/admins_process_flow/progress_screens/course_progress.dart';
import 'package:zameer_project/ui/admins_process_flow/progress_screens/employee_progress.dart';
import 'package:zameer_project/ui/admins_process_flow/progress_screens/trainer_progress.dart';

class View_Progress extends StatelessWidget {
  const View_Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
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
            Text(
              'View Progress',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            progress_button(
              text: 'Trainers Progress',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TrainerProgress()));
              },
            ),
            progress_button(
              text: 'Employees Progress',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Employee_Progress()));
              },
            ),
            progress_button(
                text: 'Course Progress',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CourseProgress()));
                })
          ],
        ),
      ),
    );
  }
}

class progress_button extends StatelessWidget {
  progress_button({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 95.0, right: 12.0, left: 12.0),
      child: Container(
        width: double.infinity,
        height: 58,
        child: RawMaterialButton(
          fillColor: Colors.yellow,
          elevation: 0.0,
          padding: EdgeInsets.symmetric(vertical: 15.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          onPressed: onTap,
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
