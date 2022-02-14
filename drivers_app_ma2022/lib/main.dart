// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

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

  MyApp({Key? key, required this.child}) : super(key: key);

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>().restartApp(); //Error
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
    );
  }
}
