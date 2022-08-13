import 'package:flutter/material.dart';

import '../../../../reusable/reusable_row.dart';
import '../../employee_home.dart';

class VideoContent extends StatelessWidget {
  const VideoContent({Key? key}) : super(key: key);

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
                    'Video Content ',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ReusableRow(title: 'Link of 1st lecture', value: 'Id'),
            ReusableRow(title: 'Link of 2nd lecture', value: 'Id'),
            ReusableRow(title: 'Link of 3rd lecture', value: 'Id'),
            ReusableRow(title: 'Link of 4th lecture', value: 'Id'),
            ReusableRow(title: 'Link of 5th lecture', value: 'Id'),
            ReusableRow(title: 'Link of 7th lecture', value: 'Id'),
            ReusableRow(title: 'Link of 8th lecture', value: 'Id'),
            ReusableRow(title: 'Link of 9th lecture', value: 'Id'),
            ReusableRow(title: 'Link of 10th lecture', value: 'Id'),
          ],
        ),
      ),
    );
  }
}
