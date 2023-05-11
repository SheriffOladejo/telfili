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

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Card(
          color: isSelected ? Colors.blue : Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          elevation: 3,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(widget.task.image, width: 50, height: 45,),
              Container(width: 5,),
              Text(widget.task.title, style: TextStyle(color: HexColor("#707070"), fontSize: 14, fontFamily: 'futura-medium'),),
              Container(width: 3,),
            ],
          ),
        ),
      ),
    );
  }

}
