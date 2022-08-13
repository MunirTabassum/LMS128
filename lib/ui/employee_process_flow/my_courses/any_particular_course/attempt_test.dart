import 'package:flutter/material.dart';

import '../../../../reusable/reusable_row.dart';

class AttemptTest extends StatelessWidget {
  const AttemptTest({Key? key}) : super(key: key);

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
                    'Attempt Tests',
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
            ReusableRow(title: '1st Test', value: 'Id'),
            ReusableRow(title: ' 2nd Test', value: 'Id'),
            ReusableRow(title: ' 3rd Test', value: 'Id'),
            ReusableRow(title: ' 4th Test', value: 'Id'),
            ReusableRow(title: ' 5th Test', value: 'Id'),
            ReusableRow(title: '7th Test', value: 'Id'),
            ReusableRow(title: ' 8th Test', value: 'Id'),
            ReusableRow(title: ' 9th Test', value: 'Id'),
            ReusableRow(title: ' 10th Test', value: 'Id'),
          ],
        ),
      ),
    );
  }
}
