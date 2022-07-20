import 'package:flutter/material.dart';
import 'package:zameer_project/ui/employee_process_flow/account/reset_password.dart';
import 'package:zameer_project/ui/employee_process_flow/account/update_profile.dart';
import 'package:zameer_project/ui/employee_process_flow/account/view_profile.dart';

import '../employee_home.dart';

class Account_Screen extends StatelessWidget {
  const Account_Screen({Key? key}) : super(key: key);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Account ',
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
                        builder: (context) => View_Emp_Profile()));
              },
              text: 'View Profile',
              color: Colors.yellow,
            ),
            SizedBox(
              height: 20,
            ),
            emp_button(
              txt_clr: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UpdateProfile()));
              },
              text: ' Update Profile',
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
                        builder: (context) => EmpResetPassword()));
              },
              text: 'Change Password',
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
