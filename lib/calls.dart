import 'package:flutter/material.dart';

class whatsApp6 extends StatefulWidget {
  const whatsApp6({Key? key}) : super(key: key);

  @override
  State<whatsApp6> createState() => _whatsApp6State();
}

class _whatsApp6State extends State<whatsApp6> {
  List men = [
    "krishna",
    "Robert Stuart",
    "Donald Trump",
    "Sai Karan",
    "Robert Stuart",
    "Donald Trump",
  ];
  List mnb = [
    Icons.call_made,
    Icons.call_received,
    Icons.call_made,
    Icons.call_received,
    Icons.call_received,
    Icons.call_made,
  ];
  List deni = [
    Icons.call,
    Icons.call,
    Icons.video_call_outlined,
    Icons.video_call_outlined,
    Icons.call,
    Icons.video_call_outlined,
  ];
  List min = [
    "December 6, 12:36",
    "November 26, 02:56",
    "July 10, 09:10",
    "January 13, 03:56",
    "December 6, 12:36",
    "November 26, 02:56",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/id.png"),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                men[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(mnb[index], color: Colors.green),
                                  SizedBox(width: 10),
                                  Text(
                                    min[index],
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 18),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(deni[index], color: Colors.teal),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
// ListTile(
// leading: CircleAvatar(
// backgroundColor: Colors.blueGrey,
// radius: 40,
// child: Image.asset("assets/images/id.png",
// fit: BoxFit.cover),
// ),
// title: Text(men[index]),
// subtitle: Text(min[index]),
// trailing: Padding(
// padding: const EdgeInsets.symmetric(vertical: 20),
// child: Icon(deni[index])),
// contentPadding:
// EdgeInsets.symmetric(vertical: 10, horizontal: 10),
// minLeadingWidth: 0,
// horizontalTitleGap: 20,
// ),
