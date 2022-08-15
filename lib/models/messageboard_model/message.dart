import 'dart:ui';

import 'package:zameer_project/models/messageboard_model/user.dart';
import 'package:zameer_project/models/messageboard_model/user.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;
  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  // fake data , fetxh from your databasae instead
  static List<Message> generateHomePageMessages() {
    return [
      Message(
        users[0],
        'Hey there! whats up Is everything ok',
        '14:05',
      ),
      Message(
        users[1],
        'Hey there! whats up Is everything ok',
        '14:05',
      ),
      Message(
        users[2],
        'Hey there! whats up Is everything ok',
        '14:05',
      ),
      Message(
        users[3],
        'Hey there! whats up Is everything ok',
        '14:05',
      ),
    ];
  }

  static List<Message> generateMessagesFromUser() {
    return [
      Message(
        users[0],
        'Hey there! whats up Is everything ok',
        '14:05',
      ),
      Message(
        me,
        'Hey there! whats up Is everything ok',
        '14:05',
      ),
      Message(
        users[0],
        'Hey there! whats up Is everything ok',
        '14:05',
        isContinue: true,
      ),
      Message(
        me,
        'Hey there! whats up Is everything ok',
        '14:05',
      ),
    ];
  }
}

var users = User.generateUsers();
var me = User(0, 'Ali', 'Pirzada', Color(0xFFA8E4F2), 'images/team_logo.jpg');
