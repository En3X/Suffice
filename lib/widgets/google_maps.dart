import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapBody extends StatefulWidget {
  const GoogleMapBody({Key? key}) : super(key: key);

  @override
  _GoogleMapBodyState createState() => _GoogleMapBodyState();
}

class _GoogleMapBodyState extends State<GoogleMapBody> {
  LatLng mainLocation = LatLng(37.43296265331129, -122.08832357078792);
  Completer<GoogleMapController> _controller = Completer();
  Future _getLocation() async {
    print("Get location called");
    bool state = await Geolocator.isLocationServiceEnabled();
    LocationPermission perms = await Geolocator.checkPermission();
    if (!state) {
      Fluttertoast.showToast(msg: 'Please enable your location service');
    }
    print("State checked");
    if (perms == LocationPermission.denied) {
      perms = await Geolocator.requestPermission();
      if (perms == LocationPermission.denied) {
        Fluttertoast.showToast(
            msg: "The app cannot run without location permission.");
      }
    }
    Position data = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    print("Location data fetched");
    double lat = data.latitude;
    double lng = data.longitude;
    // List<Placemark> placemarks = await placemarkFromCoordinates(lat, lng);
    // String newLocation;
    // if (placemarks.isEmpty)
    //   newLocation = "Unknown";
    // else
    //   newLocation = "${placemarks[0].locality}";
    _setLocation(lat, lng);
  }

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        zoomControlsEnabled: false,
        myLocationEnabled: true,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  Future<void> _setLocation(double lat, double lng) async {
    final CameraPosition _currentPosition = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(lat, lng),
        tilt: 59.440717697143555,
        zoom: 19.151926040649414);
    print("Changing to $lat $lng");
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_currentPosition));
  }
}
