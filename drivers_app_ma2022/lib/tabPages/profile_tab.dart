// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({Key? key}) : super(key: key);

  @override
  _ProfileTabPageState createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'ProfileTabPage',
      ),
    );
  }
}