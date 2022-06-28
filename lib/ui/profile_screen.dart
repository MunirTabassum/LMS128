import 'package:flutter/material.dart';

import 'screens.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: ClipRect(
                      child: Image.asset('images/fimg.png'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ali Pirzada',
                        style: TextStyle(color: Colors.white, fontSize: 38),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      '123456@ptcl',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Profile Info',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            // Line Manager field
            Container(
              width: 360,
              child: const TextField(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, color: Colors.black87)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black87, width: 2.0)),
                  labelText: 'Line Manager',
                  hintText: 'XYZ',
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 360,
              child: const TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black87, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black87, width: 2.0)),
                  labelText: 'Employ Id',
                  hintText: '123456',
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Name field
            Container(
              width: 360,
              child: const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2.0)),
                    labelText: 'Name',
                    hintText: 'Ali'),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Functions
            Container(
              width: 360,
              child: const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2.0)),
                    labelText: 'Functions',
                    hintText: 'Trainings'),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Designation
            Container(
              width: 360,
              child: const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2.0)),
                    labelText: 'Designation',
                    hintText: 'Trainer'),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Region
            Container(
              width: 360,
              child: const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2.0)),
                    labelText: 'Region',
                    hintText: 'LHR'),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // Contact Number
            Container(
              width: 360,
              child: const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black87, width: 2.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black87, width: 2.0)),
                  labelText: 'Contact Number',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
