import 'package:flutter/material.dart';

class whatsApp4 extends StatefulWidget {
  const whatsApp4({Key? key}) : super(key: key);

  @override
  State<whatsApp4> createState() => _whatsApp4State();
}

class _whatsApp4State extends State<whatsApp4> {
  List color = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  List men = [
    "Vibhanshu Garg",
    "Harvey Spector",
    "Chandu ke Chacha",
    "Donald Trump",
    "Biden",
    "Finster",
    "Harry Potter",
    "Iron Man",
    "Vibhanshu Garg",
    "Harvey Spector",
    "Chandu ke Chacha",
    "Donald Trump",
    "Biden",
    "Finster",
    "Harry Potter",
    "Iron Man",
  ];
  List tex = [
    "Goa Goa Goa!!!",
    "Lorem Ipsum",
    "What the hell!",
    "Goa Goa Goa!!!",
    "Lorem Ipsum",
    "What the hell!",
    "Goa Goa Goa!!!",
    "Lorem Ipsum",
    "What the hell!",
    "Goa Goa Goa!!!",
    "Lorem Ipsum",
    "What the hell!",
    "Goa Goa Goa!!!",
    "Lorem Ipsum",
    "What the hell!",
    "Goa Goa Goa!!!",
  ];
  List mint = [
    "14:34",
    "16:20",
    "23:05",
    "13:56",
    "14:34",
    "16:20",
    "23:05",
    "13:56",
    "14:34",
    "16:20",
    "23:05",
    "13:56",
    "14:34",
    "16:20",
    "23:05",
    "13:56",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: color.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          radius: 40,
                          child: Image.asset("assets/images/id.png",
                              fit: BoxFit.cover),
                        ),
                        title: Text(men[index]),
                        subtitle: Text(tex[index]),
                        trailing: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text(mint[index]),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        minLeadingWidth: 100,
                        horizontalTitleGap: 0,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: const Icon(Icons.message),
      ),
    );
  }
}
