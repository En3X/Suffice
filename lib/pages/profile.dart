import 'package:flutter/material.dart';
import 'package:suffice/services/user_service.dart';
import 'package:suffice/widgets/listtile_profileoptions.dart';
import 'package:suffice/widgets/user_image.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key, required this.user, required this.selfView})
      : super(key: key);
  final User user;
  final bool selfView;
  @override
  _ProfilePageState createState() => _ProfilePageState();
  _getUser() {
    return user;
  }

  _isSelfView() {
    return selfView;
  }
}

class _ProfilePageState extends State<ProfilePage> {
  User user = new User("", "", "", "", "", 0, 0);
  @override
  Widget build(BuildContext context) {
    setState(() {
      user = widget._getUser();
    });
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            getPersonalInfo(this.user),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: getControlButtons(widget._isSelfView(), this.user),
            ),
            getTaskDetails(this.user),
            Container(
                margin: EdgeInsets.only(top: 40),
                child: getListTile(
                    widget.selfView, "Settings", Icon(Icons.settings))),
            getListTile(widget.selfView, "Favorites", Icon(Icons.favorite)),
            getListTile(widget.selfView, "Friends", Icon(Icons.people)),
            getListTile(widget.selfView, "Language", Icon(Icons.public)),
            getListTile(widget.selfView, "History", Icon(Icons.timelapse)),
            getListTile(widget.selfView, "Log out", Icon(Icons.logout)),
            getOthersListTile(
                widget.selfView, "Mark as favorite", Icon(Icons.favorite)),
            getOthersListTile(widget.selfView, "Rate user", Icon(Icons.star)),
            getOthersListTile(widget.selfView, "Block user", Icon(Icons.block)),
            getOthersListTile(
                widget.selfView, "Report user", Icon(Icons.report)),
          ],
        ),
      ),
    ));
  }
}

Widget getOthersListTile(selfView, title, i) {
  if (!selfView) {
    return ListTileProfileOptions(title: title, i: i);
  }
  return Container();
}

Widget getListTile(selfView, title, i) {
  if (selfView) {
    return ListTileProfileOptions(title: title, i: i);
  }
  return Container();
}

Widget getTaskDetails(user) {
  return Container(
    margin: EdgeInsets.only(top: 14),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        getSmallDetails("Tasks", "${user.task}"),
        getSmallDetails("Rating", "${user.rating}"),
      ],
    ),
  );
}

Container getSmallDetails(title, data) {
  return Container(
    child: Column(
      children: [
        Text(
          "$title",
          style: TextStyle(fontSize: 16),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "$data",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        )
      ],
    ),
  );
}

getBio(user) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Bio",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff1A1A28),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10),
                child: Text(
                  "${user.bio}",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ],
      ),
    ),
  );
}

Widget getControlButtons(isSelfView, user) {
  if (!isSelfView) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          designButton(new Icon(Icons.phone)),
          designButton(new Icon(Icons.videocam_outlined)),
          designButton(new Icon(Icons.messenger_outline_sharp)),
          designButton(new Icon(Icons.mail_outline)),
        ],
      ),
    );
  }
  return Container();
}

ElevatedButton designButton(Icon i) {
  return ElevatedButton(
    onPressed: () {},
    child: i,
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(15),
        shape: CircleBorder(),
        primary: Color(0xff505050)),
  );
}

Widget getPersonalInfo(User user) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Center(
      child: Container(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: UserImage(),
          ),
          ListTile(
            title: Center(
                child: Text(
              "${user.name}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
            subtitle: Center(
              child: Text(
                "${user.email}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      )),
    ),
  );
}
