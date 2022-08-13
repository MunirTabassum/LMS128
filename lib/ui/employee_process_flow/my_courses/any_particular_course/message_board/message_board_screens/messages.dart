import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zameer_project/models/messageboard_model/message.dart';
import 'colors.dart';
import 'details.dart';

class Messages extends StatelessWidget {
  final messageList = Message.generateHomePageMessages();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: _buildMessages(),
      ),
    );
  }

  Widget _buildMessages() {
    return Expanded(
      child: ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => _buildMessage(context, index),
          separatorBuilder: (_, index) => SizedBox(
                height: 30,
              ),
          itemCount: messageList.length),
    );
  }

  Widget _buildMessage(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(
                  messageList[index],
                )));
      },
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: messageList[index].user.bgColor,
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.asset(
                messageList[index].user.iconUrl,
                width: 60,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${messageList[index].user.firstName}'
                      '${messageList[index].user.lastName}',
                      style: TextStyle(
                          color: KPrimaryDark,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text('${messageList[index].lastTime}',
                        style: TextStyle(color: KGreyLight)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  messageList[index].lastMessage,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: KGreyLight),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
