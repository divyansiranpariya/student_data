import 'dart:async';

import 'package:flutter/material.dart';

class splace extends StatefulWidget {
  const splace({super.key});

  @override
  State<splace> createState() => _splaceState();
}

class _splaceState extends State<splace> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('loginpage');
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            alignment: Alignment.bottomCenter,
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHiAwdFqqUMRoD7qXnga1FADXTuBV8Rqr0lCiaXgWc7gLV_VOX0IXXHA664ilxVH3WMHg&usqp=CAU"))),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Education",
                style: TextStyle(fontSize: 27, color: Color(0xff102C57)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
