import 'package:flutter/material.dart';
import 'package:suffice/widgets/home_page_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String fontBold = 'MontserratBold';
  final String fontRegular = 'MontserratRegular';
  final String fontLight = 'MontserratLight';
  final String fontMedium = 'MontserratMedium';

  TextStyle _getTextStyle(double size) {
    return TextStyle(
        color: Colors.black, decoration: TextDecoration.none, fontSize: size);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final String primaryBlueAscent = "244, 244, 248";
    // ignore: unused_local_variable
    final String primaryGrayAscent = "82,67,194";
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore, Connect, Hire",
                    style: _getTextStyle(25),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 2),
                    child: Text(
                      "It\'s that simple to get a professional",
                      style: _getTextStyle(18),
                    ),
                  ),
                ],
              ),
              Container(
                child: Center(
                  child: Image(image: AssetImage("images/ImageToDisplay.png")),
                ),
              ),
              HomePageButtons()
            ],
          ),
        ),
      ),
    );
  }
}
