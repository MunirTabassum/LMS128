import 'package:flutter/material.dart';

class Text_widget extends StatelessWidget {
  final String txt;
  final fontsize;
  final fontweight;
  final color;
  Text_widget(
      {Key? key,
      required this.txt,
      required this.fontsize,
      required this.fontweight,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text_widget(
      txt: txt,
      fontsize: fontsize,
      fontweight: fontweight,
      color: color,
    );
  }
}
