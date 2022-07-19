import 'package:flutter/material.dart';
import 'package:zameer_project/reusable/reuseable_button.dart';
import 'package:zameer_project/ui/admins_process_flow/profile_screens/view_account_info.dart';

class alert_dialog extends StatelessWidget {
  alert_dialog({
    Key? key,
    required this.text1,
    this.text2,
    this.text3,
    this.icon_img,
    required this.onTap,
    required this.btn_color,
    required this.btn_text,
    required this.btn_txt_clr,
    required this.dialog_bck_clr,
    this.icon_bck_clr,
  }) : super(key: key);
  final dialog_bck_clr;
  final icon_img;
  final icon_bck_clr;
  final String text1;
  String? text2;
  String? text3;
  final onTap;
  final String btn_text;
  final btn_color;
  final btn_txt_clr;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 42.0),
      child: Dialog(
        backgroundColor: dialog_bck_clr,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0)), //this right here
        child: Container(
          height: 450,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: icon_bck_clr,
                  radius: 70,
                  child: ClipOval(
                    child: Image.asset(icon_img),
                  ),
                ),
                Text(
                  text1,
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  text2!,
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  text3!,
                  style: TextStyle(fontSize: 30),
                ),
                button(
                  text: btn_text,
                  onTap: onTap,
                  color: btn_color,
                  txt_clr: btn_txt_clr,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
