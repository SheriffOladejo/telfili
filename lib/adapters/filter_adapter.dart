import 'package:flutter/material.dart';
import 'package:telfili/models/filter.dart';

class FilterAdapter extends StatelessWidget {

  Filter filter;

  FilterAdapter({this.filter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
        ),
        elevation: 3,
        child: Container(
          height: 25,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(width: 3,),
              Image.asset(filter.image, width: 20, height: 20,),
              Text(filter.title, style: const TextStyle(color: Colors.black38, fontSize: 8, fontFamily: 'futura-regular'),),
              Container(width: 3,),
            ],
          ),
        ),
      ),
    );
  }

}
