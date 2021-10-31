import 'package:flutter/material.dart';
import 'package:suffice/widgets/search_bar.dart';
import 'package:suffice/widgets/topbar_home.dart';

class ExploreTopSection extends StatefulWidget {
  const ExploreTopSection({Key? key, required this.username}) : super(key: key);
  final String username;
  @override
  ExploreTopSectionState createState() => ExploreTopSectionState();
}

class ExploreTopSectionState extends State<ExploreTopSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(49, 62, 252, 1),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          TopBar(),
          SearchBar(),
        ]),
      ),
    );
  }
}
