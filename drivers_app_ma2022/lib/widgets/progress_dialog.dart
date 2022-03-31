import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {
  // const ProgressDialog ({Key? key}) : super(key: key);

  String? message;

  ProgressDialog(this.message);

  @override
  Widget build(BuildContext context) {
    return  Dialog(
      backgroundColor: Colors.black54,
      child: Container(
        margin: const EdgeInsets.all(15.0),
      ),
    );
  }
}
