import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle, size: 35, color: Colors.white)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_outlined,
                  size: 35, color: Colors.white))
        ],
      ),
    );
  }
}
