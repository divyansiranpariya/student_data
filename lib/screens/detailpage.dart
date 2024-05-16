import 'package:flutter/material.dart';

import '../model/modeldata.dart';
import '../utils/global.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
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
      body: Container(
        // height: double.infinity,
        // width: double.infinity,
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                height: 633,
                width: 340,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.grey,
                      height: 150,
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 12, left: 12, bottom: 5),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Name:"),
                                        Text(
                                          "Juli patel",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Grid:"),
                                        Text(
                                          "3442",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("std:"),
                                        Text(
                                          "12",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Course:"),
                                        Text(
                                          "bca",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Contact no:"),
                                        Text(
                                          "7464",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.amber
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 50),
                                child: CircleAvatar(
                                  radius: 40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        height: 150,
                        width: 295,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfKcbACyxfxzz24LUo8AaAERCrK4zH5f0wUqid1VNF_O867CULqhfswfhcb0kYxjmdr-8&usqp=CAU"),
                          ),
                        )),
                    Container(
                      height: 300,
                      //color: Colors.grey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 18, left: 8, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlVGF9tiVbFsUm0nAG-m9tD2nrElKYq0jh1xAkqeas67z76C5m9Z5vX5rF8nkHoCG270U&usqp=CAU")),
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(color: Colors.grey)
                                      ]),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Container(
                                      //   height: 100,
                                      //   width: 100,
                                      //
                                      // ),
                                      Text("Attendence")
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRus9HqBNkg_lCFE-rj2S1vWCx1rAUI8G4jbA&s")),
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(color: Colors.grey)
                                      ]),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [Text("Cources")],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 18, left: 8, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp9dyMn7YCs5zS8qWypXxA10B4QgIH--ijrLZTP8YmZD9HeuhPr15ruS7GgtQNSZCAQSE&usqp=CAU")),
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(color: Colors.grey)
                                      ]),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Container(
                                      //   height: 100,
                                      //   width: 100,
                                      //
                                      // ),
                                      Text("Exams")
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 130,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVDWfwbOuPMAtIxM6iCqdEq5Fcy2-oTSFezg&s")),
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(color: Colors.grey)
                                      ]),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // Container(
                                      //   height: 100,
                                      //   width: 100,
                                      //
                                      // ),
                                      Text("Fee Details")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
