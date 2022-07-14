import 'package:flutter/material.dart';

class Add_Course extends StatelessWidget {
  const Add_Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Text(
            'Add Courses',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: 360,
              child: const TextField(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'Course name',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: 360,
              child: const TextField(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'Course Id',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: 360,
              child: const TextField(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'Course Trainer',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              width: 360,
              child: const TextField(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  labelText: 'Comments',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 4.0, bottom: 4.0, right: 12.0, left: 12.0),
            child: Container(
              width: double.infinity,
              height: 62,
              child: RawMaterialButton(
                fillColor: Colors.yellow,
                elevation: 0.0,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                onPressed: () {},
                child: Text(
                  "ADD COURSE",
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
    );
  }
}
