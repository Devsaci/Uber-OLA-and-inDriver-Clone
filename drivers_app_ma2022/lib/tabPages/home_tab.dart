// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({Key? key}) : super(key: key);

  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text(
        'HomeTabPage',
      ),
    );
  }
}
