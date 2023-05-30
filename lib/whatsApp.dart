import 'package:flutter/material.dart';
import 'package:untitled2/Chats.dart';
import 'package:untitled2/Status.dart';
import 'package:untitled2/calls.dart';

import 'sen1.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  initState() {
    tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  int WhatsApp = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        titleSpacing: 20,
        backgroundColor: Colors.blueGrey,
        actions: [
          Icon(Icons.photo_camera_outlined),
          SizedBox(width: 20),
          Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starrd messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("Settings")),
              ];
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.blueGrey,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.symmetric(vertical: 10),
            tabs: [
              Icon(Icons.people_sharp),
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          whatsApp1(),
          whatsApp4(),
          whatsApp5(),
          whatsApp6(),
        ],
      ),
      floatingActionButton: CircleAvatar(
          radius: 30,
          backgroundColor: (WhatsApp == 0) ? Colors.transparent : Colors.teal,
          child: (WhatsApp == 0)
              ? SizedBox()
              : (WhatsApp == 1)
                  ? Icon(
                      Icons.message,
                      color: Colors.white,
                    )
                  : (WhatsApp == 2)
                      ? Icon(Icons.camera_alt, color: Colors.white)
                      : Icon(Icons.add_ic_call_rounded, color: Colors.white)),
    );
  }
}
