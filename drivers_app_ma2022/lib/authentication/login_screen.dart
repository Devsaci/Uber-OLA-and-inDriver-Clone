import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("images/logo1.png"),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Login as a Driver",
              style: TextStyle(fontSize: 26, color: Colors.grey),
            ),
            TextField(
              controller: emailTextEditingController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.grey),
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Email",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            TextField(
              controller: passwordTextEditingController,
              keyboardType: TextInputType.text,
            ),
          ],
        ),
      ),
    );
  }
}
