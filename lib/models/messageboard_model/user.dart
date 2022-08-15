import 'dart:ui';

class User {
  num id;
  String firstName;
  String lastName;
  String iconUrl;
  Color bgColor;
  User(this.id, this.firstName, this.lastName, this.bgColor, this.iconUrl);

  static List<User> generateUsers() {
    return [
      User(1, 'Ali', 'Pirzada', Color(0xFFFDBEC8), 'images/app_logo.jpg'),
      User(2, 'Mukhtar', 'Ahmad', Color(0xFFFED6C4), 'images/tick_image.png'),
      User(3, 'Ali', 'Pirzada', Color(0xFFA8E4F2), 'images/team_logo.jpg'),
      User(4, 'Ali', 'Pirzada', Color(0xFFFFE5A7), 'images/zoom_logo.png'),
    ];
  }
}
