import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assign_Courses extends StatefulWidget {
  const Assign_Courses({Key? key}) : super(key: key);

  @override
  State<Assign_Courses> createState() => _Assign_CoursesState();
}

class _Assign_CoursesState extends State<Assign_Courses> {
  final trainer_items = ['item 0', 'item 2', 'item 3', 'item 4'];
  final employe_items = ['item 5', 'item 6', 'item 7', 'item 8'];
  String? value;
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
            'Assign Courses',
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
              margin: EdgeInsets.all(16),
              width: 360,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87, width: 2.0)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: Text('Course Name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  value: value,
                  iconSize: 36,
                  icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                  isExpanded: true,
                  items: trainer_items.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => this.value = value),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(16),
              width: 360,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87, width: 2.0)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: Text('Multiple Courses',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  value: value,
                  iconSize: 36,
                  icon: Icon(Icons.arrow_drop_down, color: Colors.black),
                  isExpanded: true,
                  items: employe_items.map(buildMenuItem2).toList(),
                  onChanged: (value) => setState(() => this.value = value),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 360,
            child: const TextField(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: Colors.black87)),
                labelText: 'First name',
              ),
            ),
          ),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
  DropdownMenuItem<String> buildMenuItem2(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
