import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveVideoSession extends StatelessWidget {
  const LiveVideoSession({Key? key}) : super(key: key);

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
            Container(
              padding: EdgeInsets.only(top: 35, left: 8, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Connect Through Zoom or Team',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  reuseableText(
                    txt:
                        'LMS 128 facilitate you with two online platforms to arrange quality meetings,that too for free',
                    txtclr: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  reuseableText(
                      txt:
                          'You can join us on Zoom or Team   ask your queries in live meetings',
                      txtclr: Colors.grey),
                  const SizedBox(
                    height: 20,
                  ),
                  reuseableText(
                      txt: 'Your learning attitude push you forward ',
                      txtclr: Colors.grey)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Join us',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.only(left: 35, right: 20),
              child: Expanded(
                child: Row(
                  children: [
                    ZTbutton(
                      txtclr: Colors.white,
                      bckclr: Colors.lightGreen,
                      img: 'images/team_logo.jpg',
                      btn_txt: 'Join us at Team',
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ZTbutton(
                      txtclr: Colors.green,
                      bckclr: Colors.yellow,
                      img: 'images/zoom_logo.png',
                      btn_txt: 'Join us at Zoom',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ZTbutton extends StatelessWidget {
  ZTbutton({
    Key? key,
    required this.btn_txt,
    required this.img,
    required this.txtclr,
    required this.bckclr,
    required this.onTap,
  }) : super(key: key);
  final String btn_txt;
  final String img;
  final Color txtclr;
  final Color bckclr;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset(
                img,
                width: 100,
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            btn_txt,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: txtclr,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
      style: TextButton.styleFrom(
        minimumSize: Size(150.0, 160.0),
        backgroundColor: bckclr,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}

class reuseableText extends StatelessWidget {
  reuseableText({
    Key? key,
    required this.txt,
    required this.txtclr,
  }) : super(key: key);
  final String txt;
  final Color txtclr;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35.0, right: 35.0),
      child: Text(
        txt,
        textAlign: TextAlign.center,
        style:
            TextStyle(color: txtclr, fontWeight: FontWeight.bold, fontSize: 14),
      ),
    );
  }
}
