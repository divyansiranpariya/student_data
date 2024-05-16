import 'package:coreflutter_exam/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/colors.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  GlobalKey<FormState> signupkey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController check = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: offwhite,
        child: Form(
          key: signupkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Signup",
                style: TextStyle(letterSpacing: 1, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  // color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.grey.shade300,
                  //  border: Border.all(color: Colors.black),
                ),
                child: TextFormField(
                  style: TextStyle(fontSize: 13),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Email is required";
                    }
                  },
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.grey.shade300,
                ),
                child: TextFormField(
                  style: TextStyle(fontSize: 13),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "please enter your password";
                    }
                  },
                  controller: pass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.grey.shade300,
                ),
                child: TextFormField(
                  style: TextStyle(fontSize: 13),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "please enter your confirm password";
                    }
                  },
                  controller: check,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(gapPadding: 40),
                    hintText: "Conform Password",
                    contentPadding: EdgeInsets.all(15),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  if (signupkey.currentState!.validate()) {
                    Navigator.of(context).pushReplacementNamed('/');
                  }
                },
                child: Container(
                  height: 45,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff102C57),
                  ),
                  child: Text(
                    "Signup",
                    style: TextStyle(color: primaryWhite, fontSize: 20),
                  ),
                ),
              ),
              Container(
                height: 40,
                width: 270,
                // color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Don't Have An Account ?",
                            style: TextStyle(fontSize: 13)),
                        TextSpan(
                            text: "  login",
                            style: TextStyle(
                              fontSize: 13.5,
                              color: Color(0xff192176),
                            ))
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
