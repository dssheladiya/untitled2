import 'package:flutter/material.dart';

class whatsApp5 extends StatefulWidget {
  const whatsApp5({Key? key}) : super(key: key);

  @override
  State<whatsApp5> createState() => _whatsApp5State();
}

class _whatsApp5State extends State<whatsApp5> {
  List men = [
    "Gautam Gulati",
    "Ayush Chautala",
    "Krishna Maurya",
    "chhotu",
    "Krishna Maurya",
  ];
  List munt = [
    "15 minutes ago",
    "1 hour ago",
    "23 minutes ago",
    "23 minutes ago",
    "39 minutes ago",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              "My status",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Tap to add status update",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 40,
                  child: Image.asset("assets/images/id.png", fit: BoxFit.cover),
                ),
                Positioned(
                  top: 35,
                  left: 45,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.orange,
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Recent updates",
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.greenAccent, width: 3),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/id.png",
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    men[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    munt[index],
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                  minLeadingWidth: 20,
                  horizontalTitleGap: 10,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
