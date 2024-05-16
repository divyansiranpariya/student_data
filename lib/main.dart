import 'package:coreflutter_exam/screens/adddata.dart';
import 'package:coreflutter_exam/screens/detailpage.dart';
import 'package:coreflutter_exam/screens/homepage.dart';
import 'package:coreflutter_exam/screens/login.dart';
import 'package:coreflutter_exam/screens/splace.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: ""),
    initialRoute: 'splace',
    routes: {
      'splace': (context) => splace(),
      '/': (context) => const Homepage(),
      'detailpage': (context) => const detailpage(),
      'addData': (context) => const addData(),
      'loginpage': (context) => const loginpage(),
    },
  ));
}
