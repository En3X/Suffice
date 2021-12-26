import 'package:flutter/material.dart';
import 'package:suffice/pages/explore.dart';
import 'package:suffice/pages/favorites.dart';
import 'package:suffice/pages/profile.dart';

class BotNav extends StatefulWidget {
  const BotNav({Key? key, required this.pageIndex, required this.usertype})
      : super(key: key);
  final int pageIndex;
  final String usertype;
  @override
  _BotNavState createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = widget.pageIndex;

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: "Profile"),
      ],
      onTap: (int index) {
        _onBottomNavTap(index, _selectedIndex);
      },
      currentIndex: _selectedIndex,
    );
  }

  void _onBottomNavTap(int index, int _selectedIndex) {
    if (index == _selectedIndex) {
      return;
    }
    if (index == 1) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavoritesPage(
                usertype: widget.usertype,
              )));
    } else if (index == 2) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProfilePage(usertype: widget.usertype)));
    } else {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ExplorePage(
                usertype: widget.usertype,
              )));
    }
  }
}
