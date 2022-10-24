// 69. display online nearest drivers and their information

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:users_app/global/global.dart';

class SelectNearestActiveDriversScreen extends StatefulWidget {
  const SelectNearestActiveDriversScreen({Key? key}) : super(key: key);

  @override
  State<SelectNearestActiveDriversScreen> createState() =>
      _SelectNearestActiveDriversScreenState();
}

class _SelectNearestActiveDriversScreenState
    extends State<SelectNearestActiveDriversScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Nearest Online Drivers",
          style: TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () {
            //delete/remove the ride request from database
            SystemNavigator.pop();
          },
          icon: const Icon(Icons.close, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.grey,
            elevation: 3,
            shadowColor: Colors.green,
            margin: const EdgeInsets.all(0.8),
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Image.asset("images/" +
                    dList[index]["car_details"]["type"].toString() +
                    ".png"),
              ),
            ),
          );
        },
        itemCount: dList.length,
      ),
    );
  }
}
