import 'package:flutter/material.dart';

class FilterAdapter extends StatelessWidget {

  const FilterAdapter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3)),
        ),
        elevation: 3,
        child: Container(
          height: 25,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(width: 3,),
              Image.asset("assets/images/mother_child.png", width: 20, height: 20,),
              Text("Certified babysitter", style: TextStyle(color: Colors.black38, fontSize: 8),),
              Container(width: 3,),
            ],
          ),
        ),
      ),
    );
  }

}
