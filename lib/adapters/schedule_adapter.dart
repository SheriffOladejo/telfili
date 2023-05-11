import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telfili/models/schedule.dart';
import 'package:telfili/utils/hex_color.dart';

class ScheduleAdapter extends StatefulWidget {

  Schedule schedule;

  ScheduleAdapter({
    this.schedule,
  });

  @override
  State<ScheduleAdapter> createState() => _ScheduleAdapterState();

}

class _ScheduleAdapterState extends State<ScheduleAdapter> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        elevation: 5,
        margin:  const EdgeInsets.only(right: 15),
        color: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          side: BorderSide(color: Colors.blue, width: 1)
        ),
        child: Container(
          width: 260,
          height: 135,
          margin:  const EdgeInsets.only(right: 15, left: 15, top: 10, bottom: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(widget.schedule.image),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.schedule.name, style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'futura-medium',
                      ),),
                      Container(height: 8,),
                      Text(widget.schedule.type, style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'futura-light',
                        fontSize: 8,
                      ),),
                      Container(height: 8,),
                    ],
                  )
                ],
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(7, 5, 7, 5),
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  color: HexColor("#77B6F3"),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.clock_fill, color: HexColor("#99C9F8"),),
                    Container(width: 10,),
                    const Text("Sun, Jan 15, 09:00am - 11:00am", style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontFamily: 'futura-regular',
                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
