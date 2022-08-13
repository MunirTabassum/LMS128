import 'package:flutter/material.dart';

import '../colors.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      elevation: 0.0,
      backgroundColor: KPrimary,
      title: InkWell(
        onTap: () {},
        child: const Text(
          'Search',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: KPrimaryLight,
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              'images/ptcl_logo.png',
              width: 40,
            ),
          ),
        ),
      ],
    );
  }
}
