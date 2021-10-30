import 'package:flutter/material.dart';
import 'package:suffice/pages/home_page.dart';

void main() {
  runApp(MainActivity());
}

class MainActivity extends StatelessWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
