import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:suffice/widgets/custom_card.dart';
import 'package:suffice/widgets/search_bar.dart';

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
  void _setLocation(String location) {
    setState(() {
      userLocation = location;
    });
    print(userLocation);
  }

  Future _getLocation() async {
    print("Get location called");
    bool state = await Geolocator.isLocationServiceEnabled();
    LocationPermission perms = await Geolocator.checkPermission();
    if (!state) {
      print("Location not enabled");
    }
    print("State checked");
    if (perms == LocationPermission.denied ||
        perms == LocationPermission.deniedForever)
      print("No permission");
    else {
      print("Has permission");
    }
    Position data = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    print("Location data fetched");
    double lat = data.latitude;
    double lng = data.longitude;
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);
    String newLocation;
    if (placemarks.isEmpty)
      newLocation = "Unknown";
    else
      newLocation = "${placemarks[0].locality}";
    _setLocation(newLocation);
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      this.usertype = widget._getUsertype();
      _getLocation();
    });
    String username = _getUsername();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(244, 244, 244, 1),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          username,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.black),
                        ),
                        Text(
                          this.userLocation,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color.fromRGBO(170, 170, 170, 1)),
                        )
                      ],
                    ),
                  ),
                  SearchBar(),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "ELECTRICIANS",
                          style: TextStyle(
                              color: Color.fromRGBO(170, 170, 170, 1),
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                CustomCard(),
                                CustomCard(),
                                CustomCard(),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
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
