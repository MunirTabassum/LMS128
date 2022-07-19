import 'package:flutter/material.dart';

import '../../../reusable/alert_dialog.dart';
import '../../../reusable/reusable_row.dart';
import '../../../reusable/reuseable_button.dart';

class View_Account_Info extends StatelessWidget {
  const View_Account_Info({Key? key}) : super(key: key);

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
                    'Info',
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
                  top: 10.0, bottom: 8.0, right: 12.0, left: 12.0),
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
                      ReusableRow(title: 'Email ', value: 'LHR'),
                      ReusableRow(title: 'Contact Number ', value: '01234567'),
                    ],
                  ),
                ),
              ),
            ),
            button(
              text: 'Approve',
              color: Colors.lightGreen,
              txt_clr: Colors.white,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert_dialog(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        text1: 'Employee',
                        text2: 'Approved',
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
            ),
            button(
              text: 'Decline',
              color: Colors.red,
              txt_clr: Colors.white,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert_dialog(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        text1: 'Employee',
                        text2: 'Declined',
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
            ),
          ],
        ),
      ),
    );
  }
}
