import 'package:flutter/material.dart';
import 'package:suffice/widgets/bottom_nav.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key, required this.usertype}) : super(key: key);
  final String usertype;
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(child: Center(child: Text("This is Favorite page"))),
        bottomNavigationBar: BotNav(
          pageIndex: 1,
          usertype: widget.usertype,
        ),
      ),
    );
  }
}
