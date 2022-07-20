import 'package:flutter/material.dart';

import '../../../reusable/alert_dialog.dart';
import '../../../reusable/reusable_row.dart';
import '../../../reusable/reuseable_button.dart';

class List_Of_Assigned_Courses extends StatelessWidget {
  const List_Of_Assigned_Courses({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(top: 5.0, left: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'List of Assigned Courses',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
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
                        title: 'Flutter',
                        value: 'F123',
                      ),
                      ReusableRow(title: 'React Native', value: 'R123'),
                      ReusableRow(title: 'Word Press', value: 'W123'),
                      ReusableRow(title: 'Shopify', value: 'S123'),
                      ReusableRow(title: 'Programming ', value: 'P123'),
                      ReusableRow(title: 'Django', value: 'D123'),
                      ReusableRow(title: 'Python ', value: 'P123'),
                      ReusableRow(title: 'Amazon', value: 'A123'),
                      ReusableRow(title: 'PHP ', value: 'P2123'),
                    ],
                  ),
                ),
              ),
            ),
            button(
              text: 'Join Courses',
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
                        text1: 'Journey',
                        text2: 'Joining',
                        text3: 'Pending',
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
              text: 'Decline Courses',
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
                        text1: 'Journey',
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
