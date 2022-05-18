// 31. Navigation Drawer - Drawer Header

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          //drawer header
          Container(
            height: 165,
            color: Colors.grey,
            child: DrawerHeader(
              decoration: const BoxDecoration(color: Colors.black),
              child: Row(
                children:  [
                  const Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 16),
                  Column(),
                ],
              ),
            ),
          ),

          //drawer body
        ],
      ),
    );
  }
}
