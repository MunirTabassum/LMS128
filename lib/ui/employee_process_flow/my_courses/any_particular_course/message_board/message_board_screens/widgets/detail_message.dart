import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zameer_project/models/messageboard_model/message.dart';
import '../colors.dart';

class DetailMessage extends StatelessWidget {
  final myId = 0;
  final list = Message.generateMessagesFromUser();
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var messageList = List.from(list.reversed);
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(25, 50, 25, 80),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: ListView.separated(
                // reverse: true,
                // controller: _scrollController,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) =>
                    messageList[index].user.id == myId
                        ? _buildRecievedText(messageList[index])
                        : _buildSenderText(messageList[index]),
                separatorBuilder: (_, index) => SizedBox(
                      height: 20,
                    ),
                itemCount: messageList.length),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 50,
              width: 300,
              child: Stack(
                children: [
                  TextField(
                    onTap: () {
                      _scrollController.animateTo(0,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeOut);
                    },
                    decoration: InputDecoration(
                        fillColor: KGreyLight.withOpacity(0.2),
                        filled: true,
                        contentPadding: EdgeInsets.all(18),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        hintText: 'Type your message...',
                        hintStyle: TextStyle(
                          color: KPrimaryDark.withOpacity(0.3),
                          fontSize: 14,
                        )),
                  ),
                  Positioned(
                    right: 8,
                    bottom: 8,
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: KPrimary,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 20,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRecievedText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          message.lastTime,
          style: TextStyle(color: KGreyLight, fontSize: 12),
        ),
        message.isContinue
            ? SizedBox(
                width: 40,
              )
            : Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: KPrimaryLight,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    )),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 180),
                  child: Text(
                    message.lastMessage,
                    style: TextStyle(height: 1.5, color: KPrimaryDark),
                  ),
                ),
              )
      ],
    );
  }

  Widget _buildSenderText(Message message) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: message.user.bgColor, shape: BoxShape.circle),
              child: ClipOval(
                child: Image.asset(
                  message.user.iconUrl,
                  width: 30,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: KGreyLight.withOpacity(0.3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 180),
                child: Text(
                  message.lastMessage,
                  style: TextStyle(height: 1.5, color: KPrimaryDark),
                ),
              ),
            )
          ],
        ),
        Text(
          message.lastTime,
          style: TextStyle(
            color: KGreyLight,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
