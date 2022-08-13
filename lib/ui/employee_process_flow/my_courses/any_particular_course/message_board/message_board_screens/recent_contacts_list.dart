import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zameer_project/models/messageboard_model/user.dart';

class RecentContacts extends StatelessWidget {
  final ContactList = User.generateUsers();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      padding: EdgeInsets.only(left: 25),
      height: 50,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: ContactList[index].bgColor,
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          ContactList[index].iconUrl,
                          width: 50,
                        ),
                      ),
                    ),
                separatorBuilder: (_, index) => SizedBox(
                      width: 15,
                    ),
                itemCount: ContactList.length),
          )
        ],
      ),
    );
  }
}
