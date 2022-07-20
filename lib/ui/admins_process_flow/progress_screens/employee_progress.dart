import 'package:flutter/material.dart';
import 'package:zameer_project/ui/admins_process_flow/admin_screens.dart';

class Employee_Progress extends StatelessWidget {
  const Employee_Progress({Key? key}) : super(key: key);

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
          Text(
            'Employee Progress',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          space(),
          box(txt: 'Registered Course Wise', onTap: () {}),
          space(),
          box(txt: 'Learning Journey Wise', onTap: () {}),
          space(),
          box(txt: 'LeaderBoards', onTap: () {}),
          space(),
          box(
            txt: 'Reports',
            onTap: () {},
          )
        ],
      ),
    );
  }
}

class space extends StatelessWidget {
  const space({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
    );
  }
}

class box extends StatelessWidget {
  box({
    Key? key,
    required this.txt,
    required this.onTap,
  }) : super(key: key);
  final String txt;
  final onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 1.5 / 2,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
            width: 5,
          ),
        ),
        child: TextButton(
          onPressed: onTap,
          child: Text(
            txt,
            style: TextStyle(color: Colors.green, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
