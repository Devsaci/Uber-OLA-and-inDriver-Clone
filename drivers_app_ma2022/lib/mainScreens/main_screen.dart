// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:drivers_app_ma2022/tabPages/earning_tab.dart';
import 'package:drivers_app_ma2022/tabPages/home_tab.dart';
import 'package:drivers_app_ma2022/tabPages/profile_tab.dart';
import 'package:drivers_app_ma2022/tabPages/ratings_tab.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          EarningsTabPage(),
          HomeTabPage(),
          ProfileTabPage(),
          RatingsTabPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [

        ],
      ),
    );
  }
}
