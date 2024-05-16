import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import '../model/modeldata.dart';
import '../utils/global.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController name = TextEditingController();
  TextEditingController gr = TextEditingController();
  TextEditingController std = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Students",
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.blue.shade900,
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('addData');
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Container(
            //   height: 200,
            //   decoration: BoxDecoration(
            //       color: Colors.red,
            //       borderRadius: BorderRadius.only(
            //           bottomLeft: Radius.circular(200),
            //           bottomRight: Radius.circular(200))),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 300),
            //   child: Container(
            //     color: Colors.pink,
            //     height: 700,
            //   ),
            // ),
            Container(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  height: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 109, top: 100),
                    child: Text(
                      "Student Data",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff102C57),
                    // image: DecorationImage(
                    //     fit: BoxFit.cover,
                    //     image: NetworkImage(
                    //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIn_XdF_41_Bu2RthYmZVQz6wn3pAfs0--rRIrNpKBkEDmfasQ8tu2fI-x-fZVrZK3JlY&usqp=CAU"))
                  ),
                  width: 370,
                ),
              ),
              // color: Colors.teal,
            ),
            Container(
              height: 600,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: ListView.builder(
                itemCount: Global.students.length,
                itemBuilder: (context, index) {
                  final student = Global.students[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 16, right: 7),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('detailpage');
                      },
                      child: Container(
                        height: 100,
                        margin: const EdgeInsets.all(12),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: student.image.isNotEmpty
                                  ? FileImage(File(student.image))
                                  : null,
                            ),
                            //SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(student.name,
                                      style: TextStyle(fontSize: 15)),
                                  SizedBox(height: 5),
                                  Text('Grid: ${student.grid}',
                                      style: TextStyle(fontSize: 13)),
                                  Text('Standard: ${student.standard}',
                                      style: TextStyle(fontSize: 13)),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Container(
                                    child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text("Upadate Dialog"),
                                            actions: [
                                              Column(
                                                children: [
                                                  TextField(
                                                    controller: name,
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      hintText:
                                                          "${student.name}",
                                                    ),
                                                  ),
                                                  TextField(
                                                    controller: gr,
                                                    decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(),
                                                      hintText:
                                                          "${student.grid}",
                                                    ),
                                                  ),
                                                  TextField(
                                                    controller: std,
                                                    decoration: InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText:
                                                            "${student.standard}"),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        student.name = name;
                                                        student.grid = gr;
                                                        student.standard = std;
                                                      });
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text("Update"),
                                                  ),
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text("Cancel"),
                                                  )
                                                ],
                                              )
                                            ],
                                          );
                                        });
                                  },
                                  icon: Icon(Icons.edit),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      Global.students.removeAt(index);
                                    });
                                  },
                                  icon: Icon(Icons.delete),
                                ),
                              ],
                            ))),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
