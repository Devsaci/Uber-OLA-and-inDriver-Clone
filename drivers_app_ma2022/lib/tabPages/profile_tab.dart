// ignore_for_file: prefer_const_constructors

import 'package:drivers_app_ma2022/splashScreen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global/global.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({Key? key}) : super(key: key);

  @override
  _ProfileTabPageState createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          fAuth.signOut();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (c) => const MySplashScreen(),
            ),
          );
        },
        child: Text(
          'Sing Out',
        ),
      ),
    );
  }
}
