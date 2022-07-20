import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zameer_project/ui/employee_process_flow/employee_home.dart';

import '../../../reusable/alert_dialog.dart';
import 'account_screen.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
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
          child: Padding(
            padding: const EdgeInsets.only(left: 18, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Update Profile',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                field(lable_txt: 'Line Manager'),
                field(lable_txt: 'Employee ID'),
                field(lable_txt: 'First Name'),
                field(lable_txt: 'Last Name'),
                field(lable_txt: 'Contact Number'),
                field(lable_txt: 'Email'),
                field(lable_txt: 'Function'),
                field(lable_txt: 'City'),
                field(lable_txt: 'Region'),
                field(lable_txt: 'Upload Picture'),
                emp_button(
                    text: 'Submit',
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return alert_dialog(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Account_Screen()));
                              },
                              text1: 'Profile',
                              text2: 'Updated',
                              text3: 'Successfully',
                              btn_color: Colors.green,
                              btn_text: 'Okay',
                              btn_txt_clr: Colors.white,
                              dialog_bck_clr: Colors.amber,
                              icon_bck_clr: Colors.white,
                              icon_img: 'images/tick_image.png',
                            );
                          });
                    },
                    txt_clr: Colors.white,
                    color: Colors.lightGreen),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class field extends StatelessWidget {
  field({
    Key? key,
    required this.lable_txt,
  }) : super(key: key);
  String lable_txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        width: 360,
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87, width: 2.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87, width: 2.0)),
            labelText: lable_txt,
          ),
        ),
      ),
    );
  }
}
