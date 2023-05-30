import 'package:flutter/material.dart';

class whatsApp1 extends StatefulWidget {
  const whatsApp1({Key? key}) : super(key: key);

  @override
  State<whatsApp1> createState() => _whatsApp1State();
}

class _whatsApp1State extends State<whatsApp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                "assets/images/1.png",
                height: 350,
                width: 350,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                "Introducing communities",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Easily organise your related groups and send",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                "announcements.Now, your communitiies, like",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "neighbourhoods or schools, can have their own",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 180),
              child: Text(
                "space.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: Center(
                  child: Text(
                    "Start your community",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
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
