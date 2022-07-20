import 'package:flutter/material.dart';

import '../../reusable/alert_dialog.dart';
import '../../reusable/reuseable_button.dart';
import 'account/account_screen.dart';

class Employee_home extends StatelessWidget {
  const Employee_home({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Employee Home',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
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
                          builder: (context) => Account_Screen()));
                },
                text: 'Account',
                color: Colors.yellow,
              ),
              emp_button(
                txt_clr: Colors.white,
                onTap: () {},
                text: 'Registered New Course',
                color: Colors.yellow,
              ),
              emp_button(
                txt_clr: Colors.white,
                onTap: () {},
                text: 'Join Assigned Course',
                color: Colors.yellow,
              ),
              emp_button(
                txt_clr: Colors.white,
                onTap: () {},
                text: 'My Course',
                color: Colors.yellow,
              ),
              emp_button(
                txt_clr: Colors.white,
                onTap: () {},
                text: 'Calender',
                color: Colors.yellow,
              ),
              emp_button(
                txt_clr: Colors.white,
                onTap: () {},
                text: 'Inbox',
                color: Colors.yellow,
              ),
              emp_button(
                txt_clr: Colors.white,
                onTap: () {},
                text: 'History',
                color: Colors.yellow,
              ),
              SizedBox(
                height: 20,
              ),
              emp_button(
                txt_clr: Colors.white,
                onTap: () {},
                text: 'Logout',
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class emp_button extends StatelessWidget {
  emp_button({
    Key? key,
    required this.text,
    required this.onTap,
    required this.txt_clr,
    required this.color,
  }) : super(key: key);
  final String text;
  final onTap;
  var color;
  final txt_clr;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 4.0, bottom: 4.0, right: 12.0, left: 12.0),
      child: Container(
        width: double.infinity,
        height: 62,
        child: RawMaterialButton(
          fillColor: color,
          elevation: 0.0,
          padding: EdgeInsets.symmetric(vertical: 20.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          onPressed: onTap,
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                color: txt_clr, fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
