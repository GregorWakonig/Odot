import 'package:flutter/material.dart';
import 'package:flutter1v2/data/dto/todo.dart';
import 'package:flutter1v2/screens/homepage.dart';


import 'package:flutter1v2/widgets.dart';

class Taskpage extends StatefulWidget {
  Taskpage({required this.taskList, required this.notifyParent});
  final Function() notifyParent;

  final List taskList;

  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();


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
                    controller: nameController,
                    // onSubmitted: (value) async {
                    //   //TODO object logic
                    // },
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

                  TextField(
                    controller: descController,
                    decoration: const InputDecoration(
                      hintText: "Enter Description",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 24.0,
                      )
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20.0,
                right: 20.0,
                child: GestureDetector(
                  onTap: () {
                    widget.taskList.add(Todo(name: nameController.value.text, description: descController.value.text));
                    widget.notifyParent();
                    Navigator.pop(context);
                  },

                  child: Container(
                    child: SizedBox(
                      width: 70,
                      height: 70,
                      child: Image(
                        image: AssetImage('assets/images/saveImage.png'),
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
