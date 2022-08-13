import 'package:flutter/material.dart';
import 'package:zameer_project/ui/employee_process_flow/my_courses/any_particular_course/message_board/message_board_screens/widgets/detail_app_bar.dart';
import 'package:zameer_project/ui/employee_process_flow/my_courses/any_particular_course/message_board/message_board_screens/widgets/detail_message.dart';
import '../../../../../../models/messageboard_model/message.dart';

import 'colors.dart';
import 'widgets/contact_info.dart';

class DetailPage extends StatelessWidget {
  final Message message;
  DetailPage(this.message);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimary,
      body: Column(children: [
        DetailAppBar(),
        ContactInfo(message),
        Expanded(child: DetailMessage()),
      ]),
    );
  }
}
