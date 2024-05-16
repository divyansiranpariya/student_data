import 'dart:io';

import 'package:coreflutter_exam/model/modeldata.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/global.dart';

class addData extends StatefulWidget {
  const addData({super.key});

  @override
  State<addData> createState() => _addDataState();
}

class _addDataState extends State<addData> {
  ImagePicker pickmages = ImagePicker();
  XFile? xFile;
  String? imagepath;
  GlobalKey<FormState> foem = GlobalKey();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController gridController = TextEditingController();
  final TextEditingController standardController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff102C57),
          title: Text(
            "Details",
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          leading: Container(),
        ),
        // appBar: AppBar(
        //   leading: Container(),
        //   title: Text("Add Data", style: TextStyle(color: Colors.white)),
        //   centerTitle: true,
        //   backgroundColor: Colors.blue.shade900,
        //
        body: Container(
          color: Colors.grey.shade100,
          child: Padding(
            padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Container(
              height: 600,
              width: 340,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                child: SingleChildScrollView(
                  child: Form(
                    key: foem,
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20)),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Pic Image"),
                                      content: Text("choose image for profile"),
                                      actions: [
                                        FloatingActionButton(
                                          mini: true,
                                          elevation: 3,
                                          onPressed: () async {
                                            xFile = await pickmages.pickImage(
                                                source: ImageSource.camera);
                                            setState(() {
                                              if (xFile != null) {
                                                imagepath = xFile!.path;
                                              }
                                            });
                                          },
                                          child:
                                              Icon(Icons.camera_alt_outlined),
                                        ),
                                        FloatingActionButton(
                                          mini: true,
                                          elevation: 3,
                                          onPressed: () async {
                                            xFile = await pickmages.pickImage(
                                                source: ImageSource.gallery);
                                            setState(() {
                                              if (xFile != null) {
                                                imagepath = xFile!.path;
                                              }
                                            });
                                          },
                                          child: Icon(Icons.browse_gallery),
                                        )
                                      ],
                                    );
                                  });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 55,
                                  backgroundImage: (imagepath != null)
                                      ? FileImage(File(imagepath!))
                                      : null,
                                  child: (imagepath != null)
                                      ? Container()
                                      : Container(
                                          alignment: Alignment.center,
                                          child: Icon(Icons.add),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          child: TextField(
                            controller: gridController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter grid",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Name",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          child: TextField(
                            controller: standardController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Std",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: OutlinedButton(
                                  onPressed: () {
                                    if (foem.currentState!.validate()) {
                                      String name = nameController.text;
                                      int grid = int.parse(gridController.text);
                                      String std = standardController.text;

                                      Student student = Student(
                                        name: name,
                                        grid: grid,
                                        standard: std,
                                        image: imagepath!,
                                      );
                                      Global.students.add(student);
                                    }
                                  },
                                  child: Text("Submit")),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            OutlinedButton(
                                onPressed: () {
                                  nameController.clear();
                                  standardController.clear();
                                  gridController.clear();
                                },
                                child: Text("clear"))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
