import 'package:flutter/material.dart';

import 'WhatsApp7.dart';

class whatsApp3 extends StatefulWidget {
  const whatsApp3({Key? key}) : super(key: key);
//2
  @override
  State<whatsApp3> createState() => _whatsApp3State();
}

class _whatsApp3State extends State<whatsApp3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                "Welcome to WhatsApp",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 28),
              ),
            ),
            SizedBox(height: 80),
            Image.asset("assets/images/2.png", height: 350, width: 350),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    "Read our",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  SizedBox(width: 8),
                  Text("Privacy Policy. ",
                      style: TextStyle(color: Colors.blue, fontSize: 15)),
                  Text(' Top "Agree and continue" to',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Row(
                children: [
                  Text("accept the ", style: TextStyle(fontSize: 16)),
                  Text("Term of Service.",
                      style: TextStyle(fontSize: 16, color: Colors.blue)),
                ],
              ),
            ),
            SizedBox(height: 60),
            InkResponse(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WhatsApp7(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.teal, borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "AGREE AND CONTINUE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
