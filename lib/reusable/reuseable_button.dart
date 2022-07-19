import 'package:flutter/material.dart';

class button extends StatelessWidget {
  button({
    Key? key,
    required this.text,
    required this.onTap,
    required this.color,
    required this.txt_clr,
  }) : super(key: key);
  final String text;
  final onTap;
  var color;
  final txt_clr;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, right: 12.0, left: 12.0),
      child: Container(
        width: double.infinity,
        height: 58,
        child: RawMaterialButton(
          fillColor: color,
          elevation: 0.0,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          onPressed: onTap,
          child: Text(
            text,
            style: TextStyle(
                color: txt_clr, fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
