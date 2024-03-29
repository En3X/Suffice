import 'package:flutter/material.dart';
import 'package:suffice/widgets/draggable_bottom_list.dart';
import 'package:suffice/widgets/google_maps.dart';
import 'package:suffice/widgets/hamburger.dart';
import 'package:suffice/widgets/search_bar.dart';
import 'package:suffice/widgets/side_drawer.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key, required this.usertype}) : super(key: key);
  final String usertype;
  _getUsertype() {
    return this.usertype;
  }

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  String usertype = "User";
  String userLocation = "Locating...";
  @override
  Widget build(BuildContext context) {
    setState(() {
      this.usertype = widget._getUsertype();
    });

    String username = _getUsername();
    return SafeArea(
      child: Scaffold(
        drawer: SideDrawer(
          usertype: this.usertype,
        ),
        body: Stack(
          children: [
            GoogleMapBody(),
            // Hamburger(),
            Container(
                margin: EdgeInsets.only(top: 40),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SearchBar(),
                )),
            DraggableBottomList()
          ],
        ),
        // bottomNavigationBar: BotNav(pageIndex: 0, usertype: widget.usertype),
      ),
    );
  }

  String _getUsername() {
    if (this.usertype == "guest") {
      return "Guest";
    }
    return "User";
  }
}
