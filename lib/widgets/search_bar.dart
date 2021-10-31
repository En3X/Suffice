import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(vertical: 30),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: "Search for professionals",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none),
          autocorrect: false,
          onEditingComplete: _editingComplete,
        ),
      ),
    );
  }

  _editingComplete() {
    // Searching will be handled here
    print("User input: ${controller.text}");
  }
}
