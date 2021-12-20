import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  // const TaskCardWidget({Key? key}) : super(key: key);
  final String? title;
  final String? desc;
  TaskCardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      margin: EdgeInsets.only(
        bottom: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(
              color: Color(0xFF0e1315),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              desc ?? "(Task has no description)",
              style: TextStyle(
                color: Color(0xFF0e1315),
                fontSize: 16.0,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),

    );
  }
}


class TodoWidget extends StatelessWidget {
  // const TodoWidget({Key? key}) : super(key: key);
  final String? text;
  final bool isDone;
  TodoWidget({this.text, required this.isDone});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
            width: 20.0,
            height: 20.0,
            margin: const EdgeInsets.only(
              right: 12.0,
            ),
            // color: Color(0xFF8249FE),
            decoration: BoxDecoration(
              color: isDone ? const Color(0xFF7349FE) : Colors.transparent,
              borderRadius: BorderRadius.circular(6.0),
              border: isDone ? null : Border.all(
                color: const Color(0xFF86829D),
                width: 1.5,
              )
            ),


            child: const Image(
              image: AssetImage(
                  'assets/images/checked.png'
              ),
            ),
          ),
          Text(
            text ?? "(Unnamed Todo)",
            style: const TextStyle(
              color: Color(0xFF121541),
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
    );
  }
}
