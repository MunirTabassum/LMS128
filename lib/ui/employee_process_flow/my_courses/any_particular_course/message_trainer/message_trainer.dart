import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zameer_project/ui/employee_process_flow/my_courses/any_particular_course/message_board/message_board_screens/messages.dart';
import '../message_board/message_board_screens/colors.dart';
import '../message_board/message_board_screens/recent_contacts_list.dart';

class MessageTrainer extends StatelessWidget {
  MessageTrainer({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: KPrimary));
    return Scaffold(
      backgroundColor: KPrimary,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
        backgroundColor: KPrimary,
        title: Text(
          'Chat with\n your Trainers',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: KPrimaryLight,
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                'images/ptcl_logo.png',
                width: 40,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecentContacts(),
              Messages(),
            ],
          ),
        ),
      ),
    );
  }
}
