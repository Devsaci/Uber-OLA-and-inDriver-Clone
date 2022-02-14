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
      ), //Error
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

