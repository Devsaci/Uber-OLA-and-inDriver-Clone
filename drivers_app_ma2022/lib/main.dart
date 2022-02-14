// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DRIVERS APP',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Welcome to Drivers App"),
          ),
          body: Center(
            child: Text("body App"),
          ),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  final Widget child;
  MyApp({required this.child});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

