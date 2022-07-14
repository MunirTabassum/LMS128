import 'package:flutter/material.dart';

class Add_Trainer extends StatelessWidget {
  const Add_Trainer({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Trainer',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 360,
              child: const TextField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'Employee ID',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 360,
              child: const TextField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'Organization',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 360,
              child: const TextField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'First name',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 360,
              child: const TextField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'Last name',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 360,
              child: const TextField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'Designation',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 360,
              child: const TextField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 360,
              child: const TextField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'Area Of Specialization',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, bottom: 8.0, right: 12.0, left: 12.0),
              child: Container(
                width: double.infinity,
                child: RawMaterialButton(
                  fillColor: Colors.green,
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  onPressed: () {},
                  child: const Text(
                    "ADD Trainer",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
