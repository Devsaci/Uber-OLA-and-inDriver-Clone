// 69. display online nearest drivers and their information

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
            icon: const Icon(
                Icons.close, color: Colors.white
            ),
        ),
      ),
    );
  }
}
