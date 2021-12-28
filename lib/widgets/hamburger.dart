import 'package:flutter/material.dart';

class Hamburger extends StatefulWidget {
  const Hamburger({Key? key}) : super(key: key);

  @override
  _HamburgerState createState() => _HamburgerState();
}

class _HamburgerState extends State<Hamburger> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset.zero,
                color: Colors.black26,
                blurRadius: 1,
                spreadRadius: 1),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Icon(
            Icons.reorder,
            color: Colors.black87,
            size: 27,
          ),
        ),
      ),
    );
  }
}
