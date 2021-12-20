import 'package:flutter/material.dart';
import 'package:flutter1v2/screens/taskpage.dart';
import 'package:flutter1v2/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      top: 12.0,
                    ),
                    child: const Image(
                      image: AssetImage(
                          'assets/images/logo_small.png'
                      ),
                    ),

                  ),
                  const Text(
                    "Your Odot Lists",
                    style: TextStyle(
                      color: Color(0xFF0e1315),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Expanded(
                    child: ListView(
                      children: [
                        TaskCardWidget(
                            title: 'Sample Task',
                            desc: 'Milks, Eggs, Juice'
                        ),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                      ],
                    )
                  )


                ],
              ),
              Positioned(
                bottom: 20.0,
                right: 10.0,
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
