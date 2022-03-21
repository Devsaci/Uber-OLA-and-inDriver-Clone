import 'package:flutter/material.dart';

class CarInfoScreen extends StatefulWidget {
  @override
  State<CarInfoScreen> createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("images/logo1.png"),
            ),
          ],
        ),
      ),
    );
  }
}
