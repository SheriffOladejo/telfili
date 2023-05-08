import 'package:flutter/material.dart';
import 'package:telfili/models/task.dart';
import 'package:telfili/utils/hex_color.dart';

class TaskAdapter extends StatefulWidget {

  Task task;

  TaskAdapter({this.task});

  @override
  State<TaskAdapter> createState() => _TaskAdapterState();

}

class _TaskAdapterState extends State<TaskAdapter> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        elevation: 3,
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/books.png", width: 50, height: 45,),
              Container(width: 5,),
              Text("Study", style: TextStyle(color: HexColor("#707070"), fontSize: 14, fontFamily: 'futura-medium'),),
              Container(width: 3,),
            ],
          ),
        ),
      ),
    );
  }

}
