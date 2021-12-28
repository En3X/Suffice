import 'package:flutter/material.dart';

class ListTileProfileOptions extends StatefulWidget {
  const ListTileProfileOptions({Key? key, required this.title, required this.i})
      : super(key: key);
  final String title;
  final Icon i;
  @override
  _ListTileProfileOptionsState createState() => _ListTileProfileOptionsState();
}

class _ListTileProfileOptionsState extends State<ListTileProfileOptions> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: widget.i,
        title: Text("${widget.title}"),
        trailing: Icon(Icons.chevron_right));
  }
}
