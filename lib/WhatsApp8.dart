import 'dart:async';

import 'package:flutter/material.dart';

import 'WhatsApp9.dart';

class WhatsApp8 extends StatefulWidget {
  const WhatsApp8({Key? key}) : super(key: key);
//4
  @override
  State<WhatsApp8> createState() => _WhatsApp8State();
}

class _WhatsApp8State extends State<WhatsApp8> {
  initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WhatsApp9(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Initializing....",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Please wait a moment",
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(
              "assets/images/2.png",
              height: 400,
              width: 400,
            ),
          ),
          SizedBox(height: 150),
          CircularProgressIndicator(
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
