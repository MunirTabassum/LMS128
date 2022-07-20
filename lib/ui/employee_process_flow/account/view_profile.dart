import 'package:flutter/material.dart';
import 'package:zameer_project/ui/employee_process_flow/account/update_profile.dart';
import '../../../reusable/reusable_row.dart';
import '../../../reusable/reuseable_button.dart';

class View_Emp_Profile extends StatelessWidget {
  const View_Emp_Profile({Key? key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    ' Profile',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 4.0, right: 12.0, left: 12.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      ReusableRow(
                        title: 'Line Manager Emp ID',
                        value: 'XYZ',
                      ),
                      ReusableRow(title: 'Employee ID', value: '1234'),
                      ReusableRow(title: 'First Name', value: 'Ali'),
                      ReusableRow(title: 'Last Name', value: 'Pirzada'),
                      ReusableRow(title: 'Function', value: 'Abc'),
                      ReusableRow(
                          title: 'Designation', value: 'Assistant Manager'),
                      ReusableRow(title: 'Region ', value: 'ali@gmail.com'),
                      ReusableRow(title: 'Contact Number ', value: '01234567'),
                    ],
                  ),
                ),
              ),
            ),
            button(
              text: 'Update Profile',
              color: Colors.lightGreen,
              txt_clr: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UpdateProfile()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
