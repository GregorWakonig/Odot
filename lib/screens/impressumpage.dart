import 'package:flutter/material.dart';

import 'package:flutter1v2/widgets.dart';

class Impressumpage extends StatefulWidget {
  const Impressumpage({Key? key}) : super(key: key);


  @override
  _ImpressumpageState createState() => _ImpressumpageState();
}

class _ImpressumpageState extends State<Impressumpage> {
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
          margin: const EdgeInsets.symmetric(
            vertical: 30.0,
            horizontal: 30.0,
          ),
          child: Column(
            children: const [
              Text(
                  "Impressum\n\nOdot the Todo App for quick stuffs\n\n",
                style: TextStyle(
                  color: Color(0xFF0e1315),
                  fontSize: 28.0,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
