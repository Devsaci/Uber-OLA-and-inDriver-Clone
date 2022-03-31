
import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {
  // const ProgressDialog ({Key? key}) : super(key: key);

  String? message;

  ProgressDialog(this.message);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.yellowAccent,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const SizedBox(
                width: 6.0,
              ),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
              const SizedBox(
                width: 6.0,
              ),
              Text(
                message!,
                style: const TextStyle(color: Colors.black, fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
