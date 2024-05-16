import 'package:flutter/material.dart';
import '../model/modeldata.dart';
import '../utils/global.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
            Container(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 33),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIn_XdF_41_Bu2RthYmZVQz6wn3pAfs0--rRIrNpKBkEDmfasQ8tu2fI-x-fZVrZK3JlY&usqp=CAU"))),
                  height: 230,
                  width: 370,
                ),
              ),
              // color: Colors.teal,
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: ListView.builder(
                itemCount: Global.students.length,
                itemBuilder: (context, index) {
                  final student = Global.students[index];
                  return Container(
                    height: 100,
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      children: [
                        // CircleAvatar(
                        //   radius: 45,
                        //   backgroundImage: student.image.isNotEmpty
                        //       ? FileImage(File(student.image))
                        //       : null,
                        // ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(student.name,
                                  style: TextStyle(fontSize: 17)),
                              SizedBox(height: 5),
                              Text('Grid: ${student.grid}',
                                  style: TextStyle(fontSize: 16)),
                              Text('Standard: ${student.standard}',
                                  style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                        Row(
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
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "${student.name}",
                                                ),
                                              ),
                                              TextField(
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: "${student.grid}",
                                                ),
                                              ),
                                              TextField(
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
                                                onPressed: () {},
                                                child: Text("Update"),
                                              ),
                                              OutlinedButton(
                                                onPressed: () {},
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
                        )
                      ],
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
