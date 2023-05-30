import 'package:flutter/material.dart';
import 'package:untitled2/sen1.dart';
import 'package:untitled2/whats2App.dart';
import 'package:untitled2/whats3App.dart';
import 'package:untitled2/Chats.dart';
import 'package:untitled2/Status.dart';
import 'package:untitled2/calls.dart';
import 'package:untitled2/whatsApp.dart';
import 'WhatsApp7.dart';
import 'WhatsApp8.dart';
import 'WhatsApp9.dart';
import 'abc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: abc(),
    );
  }
}
