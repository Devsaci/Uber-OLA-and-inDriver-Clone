import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:users_app/global/global.dart';

import '../authentication/login_screen.dart';

class MainScreen extends StatefulWidget {
  // const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(49.8980884,2.2880343),
    zoom: 14.4746,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          GoogleMap(
            initialCameraPosition: _kGooglePlex,
          ),
        ],
      ),
    );
  }
}
