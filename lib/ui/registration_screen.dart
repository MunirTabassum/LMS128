import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 18, top: 6.0, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Registration',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),

              // First name field
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
                    labelText: 'First Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // Last name field
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
                    labelText: 'Last Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // Line Manager Employ ID
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
                    labelText: 'Line Manager Employ ID',
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // Employ Id
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
                  ),
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
                  ),
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
                  ),
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
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // Email
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
                    labelText: 'Email',
                  ),
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
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, right: 12.0, left: 12.0),
                child: Container(
                  width: double.infinity,
                  child: RawMaterialButton(
                    fillColor: Colors.green,
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    onPressed: () async {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 1.0, left: 28),
                child: Row(
                  children: const [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
