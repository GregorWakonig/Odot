import 'package:flutter/material.dart';

import 'package:flutter1v2/widgets.dart';

class Taskpage extends StatefulWidget {
  const Taskpage({Key? key}) : super(key: key);


  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 12.0,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Image(
                              image: AssetImage(
                                'assets/images/backIcon.png'
                              )
                            ),
                          ),
                        ),
                         Expanded(
                          child: TextField(
                            onSubmitted: (value) async {
                              // DatabaseHelper _dbHelper = DatabaseHelper();
                              // if(value != "") {
                              //   Task _newTask = Task(
                              //     title: value
                              //   );
                              //
                              //   await _dbHelper.insertTask(_newTask);
                              //   print("New Task has been created");
                              // }
                              print("add db functionality plz");
                            },

                            decoration: const InputDecoration(
                              hintText: "Enter Task Title",
                              border: InputBorder.none,
                            ),
                            style: const TextStyle(
                              fontSize: 26.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Description",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 24.0,
                      )
                    ),
                  ),
                  TodoWidget(
                    text: "Create your first Task",
                    isDone: false,
                  ),
                  TodoWidget(
                    isDone: false,
                  ),
                  TodoWidget(
                    isDone: true,
                  ),
                ],
              ),
              Positioned(
                bottom: 20.0,
                right: 20.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Taskpage()
                      ),
                    );
                  },
                  child: Container(
                    child: const Image(
                      image: AssetImage(
                          "assets/images/addButton.png"
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
