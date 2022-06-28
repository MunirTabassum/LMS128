import 'package:flutter/material.dart';
import 'package:zameer_project/ui/login_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   leading: Icon(
        //     Icons.arrow_back,
        //     color: Colors.black,
        //   ),
        //   elevation: 0.0,
        //   backgroundColor: Colors.white,
        // ),
        body: Column(
          children: [
            Row(
              children: [Icon(Icons.arrow_back)],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FittedBox(
                  child: Image.asset(
                    height: 164,
                    'images/app_logo.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ],
            ),
            // Container(
            //   height: 164,
            //   color: Colors.white,
            //   width: MediaQuery.of(context).size.width,
            //   child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            //     Image.asset(
            //       'images/app_logo.jpg',
            //     ),
            //   ]),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  Text(
                    'Dont worry, it happens',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // email field
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
                  labelText: '123456@ptcl',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // function field
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
                  labelText: 'Function',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // city field
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
                  labelText: 'ISB / RWP / LHR',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // number field
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
                  labelText: '03335255560',
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 28),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'New user?',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'register',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
