import 'package:flutter/material.dart';
import 'package:suffice/pages/home_page.dart';
import 'package:suffice/pages/profile.dart';
import 'package:suffice/services/user_service.dart';
import 'package:suffice/widgets/user_image.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key, required this.usertype}) : super(key: key);
  final String usertype;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserImage(),
          ListTile(
            title: Center(
                child: Text(
              "${getUser(this.usertype).name}",
              style: TextStyle(fontSize: 18),
            )),
            subtitle: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage(
                                user: getUser(this.usertype),
                                selfView: true,
                              )));
                },
                child: Text(
                  "View Profile",
                  style: TextStyle(color: Color(0xffF71662), fontSize: 15),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ListTile(
                leading: Icon(Icons.settings),
                title: getTitle("Settings"),
                trailing: Icon(Icons.chevron_right)),
          ),
          ListTile(
              leading: Icon(Icons.info_outline),
              title: getTitle("Help"),
              trailing: Icon(Icons.chevron_right)),
          ListTile(
              leading: Icon(Icons.message),
              title: getTitle("Support"),
              trailing: Icon(Icons.chevron_right)),
          ListTile(
              leading: Icon(Icons.public),
              title: getTitle("Language"),
              trailing: Icon(Icons.chevron_right)),
          ListTile(
              leading: Icon(Icons.timelapse),
              title: getTitle("History"),
              trailing: Icon(Icons.chevron_right)),
          ListTile(
              onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()))
                  },
              leading: Icon(Icons.logout),
              title: getTitle("Log out"),
              trailing: Icon(Icons.chevron_right))
        ],
      ),
    );
  }
}

Text getTitle(String title) {
  return Text(
    "$title",
    style: TextStyle(fontSize: 17),
  );
}

User getUser(String usertype) {
  if (usertype.toLowerCase() == "guest") {
    User u = new User(
        "Guest Login",
        "none",
        "No email information",
        "pwd",
        "You are logged in as guest user, please login with your id to show the bio.",
        0,
        0.0);
    return u;
  }
  return new User("John Doe", "uuiidd", "john.doe@example.com", "pwd",
      "Hay there, this is John Doe. The awesome person.", 69, 3.8);
}
