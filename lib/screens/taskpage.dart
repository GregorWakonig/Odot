import 'package:flutter/material.dart';
import 'package:flutter1v2/data/dto/todo.dart';
import 'package:flutter1v2/screens/homepage.dart';


import 'package:flutter1v2/widgets.dart';

class Taskpage extends StatefulWidget {
  // const Taskpage({Key? key}) : super(key: key);
  Taskpage({required this.taskList, required this.notifyParent});
  final Function() notifyParent;

  final List taskList;

  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {



  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Color(0xFF4072ef),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              width: 400,
              height: 70,
              child: Image(
                image: AssetImage('assets/images/logo_small.png'),
              ),
            ),

          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 20.0,
                      top: 36.0,
                    ),
                    child: const Text(
                      "Create a new Task here",
                      style: TextStyle(
                        color: Color(0xFF0e1315),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  TextField(
                    onSubmitted: (value) async {
                      //TODO object logic
                    },
                    decoration: const InputDecoration(
                      hintText: "Enter Task Title",
                      border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.0,
                        )
                    ),
                    style: const TextStyle(
                      fontSize: 26.0,
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
                  // TodoWidget(
                  //   text: "Create your first Task",
                  //   isDone: false,
                  // ),
                  // TodoWidget(
                  //   isDone: false,
                  // ),
                  // TodoWidget(
                  //   isDone: true,
                  // ),
                ],
              ),
              Positioned(
                bottom: 20.0,
                right: 20.0,
                child: GestureDetector(
                  onTap: () {
                    widget.taskList.add(Todo(name: "Elli ist eine Gœttin", description: "myDescriptoin"));
                    // Navigator.pushReplacement(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => Homepage()
                    //       // Navigator.pop(context);
                    //   ),
                    // );
                    widget.notifyParent();
                    Navigator.pop(context);

                  },

                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         // builder: (context) => Taskpage()
                  //         Navigator.pop(context);
                  //     ),
                  //   );
                  // },
                  child: Container(
                    color: const Color(0xFF86829D),
                    child: Text ("Save",
                      style: const TextStyle(
                        color: Color(0xFF121541),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),),
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
