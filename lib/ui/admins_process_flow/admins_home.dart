import 'package:flutter/material.dart';

class Admin_home extends StatelessWidget {
  const Admin_home({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Admin',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
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
                      "ADD TRAINERS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
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
                      "ADD EMPLOYEES",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
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
                      "APPROVE NEW REQUESTS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
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
                      "VIEW PROGRESS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
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
                      "VIEW PROFILES",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
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
                      "DELETE PROFILE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
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
                      "ADD LEARNING JOURNEY",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
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
                      "ASSIGN COURSE",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 35.0, bottom: 8.0, right: 12.0, left: 12.0),
                child: Container(
                  width: double.infinity,
                  child: RawMaterialButton(
                    fillColor: Colors.red,
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    onPressed: () {},
                    child: Text(
                      "LOGOUT",
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
      ),
    );
  }
}
