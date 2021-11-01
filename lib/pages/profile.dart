import 'package:flutter/material.dart';
import 'package:suffice/widgets/bottom_nav.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.usertype}) : super(key: key);
  final String usertype;
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(child: Center(child: Text("This is Profile page"))),
        bottomNavigationBar: BotNav(
          pageIndex: 2,
          usertype: widget.usertype,
        ),
      ),
    );
  }
}
