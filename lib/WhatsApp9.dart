import 'package:flutter/material.dart';
import 'package:untitled2/whatsApp.dart';

class WhatsApp9 extends StatefulWidget {
  const WhatsApp9({Key? key}) : super(key: key);
//5
  @override
  State<WhatsApp9> createState() => _WhatsApp9State();
}

class _WhatsApp9State extends State<WhatsApp9> {
  int selected = 0;
  int selected2 = 0;
  List data = [
    "India",
    "Pakistan",
    "South Africa",
    "United kingdom",
    "United States",
    "Afghanistan",
    "Aland Islands",
    "Albania",
    "Algeria",
    "American Samoa",
  ];
  List data1 = [
    "+91",
    "+92",
    "+27",
    "+44",
    "+1",
    "+93",
    "+358",
    "+355",
    "+213",
    "+1",
  ];
  List newicon = [
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
    Icons.check,
  ];
  String dropdownvalue = "name";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  Text(
                    "Enter your phone number",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.black),
                  ),
                  Spacer(),
                  PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("Settings"),
                        height: 0,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    "WhatsApp will need to verify your phone number.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black),
                  ),
                  Text(
                    "What's",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "My number?",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: DropdownButton(
                // iconDisabledColor: Colors.teal,
                //iconEnabledColor: Colors.teal,
                hint: Text("${dropdownvalue}"),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                isExpanded: true,
                underline: SizedBox(),
                alignment: Alignment.center,
                items: List.generate(
                  data.length,
                  (index) => DropdownMenuItem(
                    value: data[index],
                    child: Row(
                      children: [
                        Text(
                          "${data[index]}",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Text(
                          data1[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: Icon(
                            newicon[index],
                            color: selected2 == index
                                ? Colors.teal
                                : Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                  dropdownvalue = value as String;
                },
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.teal,
              endIndent: 60,
              indent: 60,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "+  91       phone number",
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.teal,
              endIndent: 58,
              indent: 60,
            ),
            SizedBox(height: 20),
            Text(
              "Carrier charges may apply",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 130),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => WhatsApp()),
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
              ),
              child: Text("NEXT"),
            ),
          ],
        ),
      ),
    );
  }
}
