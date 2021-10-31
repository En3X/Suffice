import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:suffice/widgets/explore_top_section.dart';
import 'package:suffice/widgets/suggested_professionals.dart';

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
  void initState() {
    super.initState();
    _getLocation();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      this.usertype = widget._getUsertype();
    });

    String username = _getUsername();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(244, 244, 244, 1),
        body: Container(
          child: Column(
            children: [
              ExploreTopSection(username: username),
              Expanded(child: SuggestedProfessionals()),
            ],
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
