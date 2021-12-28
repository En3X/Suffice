import 'package:flutter/material.dart';

class UserImage extends StatefulWidget {
  const UserImage({Key? key}) : super(key: key);

  @override
  _UserImageState createState() => _UserImageState();
}

class _UserImageState extends State<UserImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfffafafa),
      margin: EdgeInsets.only(top: 40),
      height: 100,
      child: Container(
        child: Image.asset(
          'images/defaultUserIcon.png',
        ),
      ),
    );
  }
}
