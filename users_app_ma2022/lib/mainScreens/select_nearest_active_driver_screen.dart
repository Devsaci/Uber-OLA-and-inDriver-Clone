// 69. display online nearest drivers and their information

import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
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
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Text(
              dList[index]["name"],
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              Text(dList[index]["car_details"]["car_model"],
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white54,
                ),
              ),
                  SmoothStarRating(
                    allowHalfRating: true,
                  ),
            ],
          ),)
          ,
          );
        },
        itemCount: dList.length,
      ),
    );
  }
}
