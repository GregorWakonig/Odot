import 'package:flutter/material.dart';
import 'package:flutter1v2/data/dto/todo.dart';
import 'package:flutter1v2/screens/taskpage.dart';
import 'package:flutter1v2/widgets.dart';

class Archivepage extends StatefulWidget {
  const Archivepage({Key? key}) : super(key: key);

  @override
  _ArchiveState createState() => _ArchiveState();
}

class _ArchiveState extends State<Archivepage> {

  var TaskList = [
    Todo(name: "First Archived Task", description: "Tidy up, send Letters"),
    Todo(name: "This todo was bad anyways", description: "myDescriptoin"),
    Todo(name: "Why did I even create this one", description: "myDescriptoin2"),
    Todo(name: "archived 4", description: "myDescriptoin3"),
  ];


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
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,

          ),
          color: Color(0xFFf4fcff),
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
                      "Archive",
                      style: TextStyle(
                        color: Color(0xFF0e1315),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView(
                        children: [
                          for (var todo in TaskList)
                            TaskCardWidget(title: todo.name, desc: todo.description,)

                        ],
                      )
                  )
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
