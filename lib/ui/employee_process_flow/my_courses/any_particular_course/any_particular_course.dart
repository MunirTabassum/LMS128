import 'package:flutter/material.dart';
import 'package:zameer_project/ui/employee_process_flow/account/reset_password.dart';
import 'package:zameer_project/ui/employee_process_flow/my_courses/any_particular_course/message_trainer/message_trainer.dart';
import 'package:zameer_project/ui/employee_process_flow/my_courses/any_particular_course/video_content.dart';

import '../../employee_home.dart';
import 'attempt_test.dart';
import 'lecture_notes.dart';
import 'live_video_session.dart';
import 'message_board/message_board.dart';

class AnyParticularCourse extends StatelessWidget {
  const AnyParticularCourse({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Any Particular Course ',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            emp_button(
              txt_clr: Colors.white,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LiveVideoSession()));
              },
              text: 'Live Video Session',
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 10,
            ),
            emp_button(
              txt_clr: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VideoContent()));
              },
              text: 'Video Content (Uploaded)',
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 10,
            ),
            emp_button(
              txt_clr: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LectureNotes()));
              },
              text: 'Lecture Notes',
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 10,
            ),
            emp_button(
              txt_clr: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AttemptTest()));
              },
              text: 'Attempt Tests',
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 10,
            ),
            emp_button(
              txt_clr: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessageBoard()));
              },
              text: 'Message Board(Open Discussion)',
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 10,
            ),
            emp_button(
              txt_clr: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessageTrainer()));
              },
              text: 'Message Trainer(Private)',
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
