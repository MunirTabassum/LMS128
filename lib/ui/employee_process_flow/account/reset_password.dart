import 'package:flutter/material.dart';
import 'package:zameer_project/reusable/reuseable_button.dart';
import 'package:zameer_project/ui/employee_process_flow/account/update_profile.dart';

import '../../../reusable/alert_dialog.dart';
import 'account_screen.dart';

class EmpResetPassword extends StatefulWidget {
  const EmpResetPassword({Key? key}) : super(key: key);

  @override
  State<EmpResetPassword> createState() => _EmpResetPasswordState();
}

class _EmpResetPasswordState extends State<EmpResetPassword> {
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
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Reset Password',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              field(lable_txt: 'Current Password'),
              const SizedBox(
                height: 20,
              ),
              field(lable_txt: 'New Password'),
              const SizedBox(
                height: 20,
              ),
              field(lable_txt: 'Confirm New Password'),
              const SizedBox(
                height: 20,
              ),
              button(
                  text: 'Reset',
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert_dialog(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Account_Screen()));
                            },
                            text1: 'Password',
                            text2: 'Reset',
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
                  color: Colors.green,
                  txt_clr: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
