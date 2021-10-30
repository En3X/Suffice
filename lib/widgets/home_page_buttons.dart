import 'package:flutter/material.dart';
import '../pages/explore.dart';

class HomePageButtons extends StatelessWidget {
  const HomePageButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExplorePage(
                              usertype: 'guest',
                            )));
              },
              icon: Icon(Icons.explore),
              label: Text("Explore", style: TextStyle(fontSize: 20)),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(82, 67, 194, 1)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(244, 244, 248, 1)))),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.verified_user),
              label: Text("Login", style: TextStyle(fontSize: 20)),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(82, 67, 194, 1)),
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(244, 244, 248, 1)))),
        ],
      ),
    );
  }
}
