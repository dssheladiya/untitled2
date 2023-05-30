import 'package:flutter/material.dart';

import 'WhatsApp8.dart';

class WhatsApp7 extends StatefulWidget {
  const WhatsApp7({Key? key}) : super(key: key);
//3
  @override
  State<WhatsApp7> createState() => _WhatsApp7State();
}

class _WhatsApp7State extends State<WhatsApp7> {
  List language1 = [
    "English",
    "हिन्दी",
    "मराठी",
    "ગુજરાતી",
    "தமிழ்",
    "ভারত",
    "తెలుగు",
    "ಕನ್ನಡ",
    "മലയാളം",
    "ਹਵਾਲੇਸੋਧੋ",
    "ویکیپیڈیا",
    "Afrikaans ",
    "shqip",
    "አማርኛ",
    "Azərbaycan dili",
    "Българоезичната",
    "valencià",
    "中文維基百科",
    "繁體中文（香港）"
  ];
  List language2 = [
    "(phone's language)",
    "Hindi",
    "Marathi",
    "Gujarati",
    "Tamil",
    "Bengali",
    "Telugu",
    "Kannada",
    "Malayalam",
    "Punjabi",
    "Urdu",
    "Afrikaans ",
    "Albanian ",
    "Amharic",
    "Azerbaijani",
    "Bulgarian",
    "Catalan",
    "Simplified Chinese",
    "Traditional Chinese(Hong Kong)"
  ];
  int selection = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  top: 100,
                  left: 45,
                  right: 45,
                  child: Image.asset(
                    "assets/images/2.png",
                  ),
                ),
                Positioned(
                  top: 240,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-5, -5),
                          blurRadius: 30,
                          spreadRadius: 30,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Welcome to WhatsApp",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "Choose your language to get started",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              ListView.builder(
                                itemCount: language2.length,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: InkResponse(
                                      onTap: () {
                                        setState(
                                          () {
                                            selection = index;
                                          },
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 22,
                                            width: 22,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 20),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: selection == index
                                                    ? Color(0xff19836c)
                                                    : Colors.grey,
                                                width: 2,
                                              ),
                                            ),
                                            child: Center(
                                              child: Container(
                                                height: 12,
                                                width: 12,
                                                decoration: BoxDecoration(
                                                  color: selection == index
                                                      ? Color(0xff19836c)
                                                      : Colors.transparent,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 30),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                language1[index],
                                                style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                language2[index],
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                              Positioned(
                                top: 450,
                                right: 30,
                                child: InkResponse(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WhatsApp8(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      color: Color(0xff19836c),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
