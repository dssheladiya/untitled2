import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled2/whats3App.dart';

class whatsApp2 extends StatefulWidget {
  const whatsApp2({Key? key}) : super(key: key);
//1
  @override
  State<whatsApp2> createState() => _whatsApp2State();
}

class _whatsApp2State extends State<whatsApp2> {
  initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => whatsApp3(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 300, left: 150),
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  "assets/images/3.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 120),
              child: Text(
                "from",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Container(
                height: 60,
                width: 150,
                child: Image.asset(
                  "assets/images/meta.png",
                  fit: BoxFit.cover,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
