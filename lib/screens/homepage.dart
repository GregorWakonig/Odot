import 'package:flutter/material.dart';
import 'package:flutter1v2/data/dto/todo.dart';
import 'package:flutter1v2/screens/archivepage.dart';
import 'package:flutter1v2/screens/impressumpage.dart';
import 'package:flutter1v2/screens/settingspage.dart';
import 'package:flutter1v2/screens/taskpage.dart';
import 'package:flutter1v2/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);



  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  refresh() {
    print(todoList);
    setState(() {});
  }

  var todoList = [
    Todo(name: "Sample Shopping List", description: "Milk, Eggs, Juice"),
  ];


  // @override
  // void initState() {
  //   todoList;
  //
  //   super.initState();
  // }


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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                margin: const EdgeInsets.only(
                  bottom: 20.0,
                  top: 36.0,
                ),
                child: const Text(
                  "Your Odot Lists",
                  style: TextStyle(
                    color: Color(0xFF0e1315),
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Expanded(child: SingleChildScrollView(
                child: Column(children: [
                  for (var task in todoList)
                    TaskCardWidget(title: task.name, desc: task.description,)
                ],)
              ),
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Settingspage()
                            ),
                          );
                        },

                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color(0xFF2150c6),
                          ),

                          width: 200.0,
                          margin: const EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),

                          child: const Center(
                            child: Text ("Settings",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Impressumpage()
                            ),
                          );
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color(0xFF2150c6),
                          ),
                          width: 200.0,
                          margin: const EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),

                          child: const Center(
                            child: Text ("Impressum",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Archivepage()
                            ),
                          );
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color(0xFF2150c6),
                          ),
                          width: 200.0,
                          margin: const EdgeInsets.symmetric(
                            vertical: 10.0,
                          ),

                          child: const Center(
                            child: Text ("Go To Archive",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),



                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {});
                      // print(todoList);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Taskpage(taskList: todoList, notifyParent: refresh)
                        ),
                      );
                    },
                    child: Container(




                      child: SizedBox(
                        width: 90,
                        height: 90,
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
            ],
          ),
        ),
      ),
    );
  }
}


