// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({Key? key}) : super(key: key);

  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {


  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(49.8980884, 2.2880343),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text(
        'HomeTabPage',
      ),
    );
  }
}
