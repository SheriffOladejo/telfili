import 'package:flutter/material.dart';
import 'package:telfili/models/babysitter.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/babysitter_profile.dart';

class BabySitterAdapter extends StatefulWidget {

  BabySitter babySitter;

  BabySitterAdapter({this.babySitter});

  @override
  State<BabySitterAdapter> createState() => _BabySitterAdapterState();

}

class _BabySitterAdapterState extends State<BabySitterAdapter> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, slideLeft(BabySitterProfile(babysitter: widget.babySitter)));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Card(
          elevation: 5,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: SizedBox(
            height: 90,
            child: Row(
              children: [
                Image.asset("assets/images/babysitter2.png", width: 70, height: 70,scale: 0.7,),
                Container(width: 10,),
                SizedBox(
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 5,),
                      Text("Andria Hattar", style: TextStyle(
                        color: HexColor("#707070"),
                        fontFamily: 'futura-medium',
                        fontSize: 14,
                      ),),
                      Container(height: 10,),
                      const Text("Certified babysitter", style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-regular',
                        fontSize: 10,
                      ),),
                      Container(height: 5,),
                      Image.asset("assets/images/rating stars five.png")
                    ],
                  ),
                ),
                Container(width: 60,),
                Container(
                  height: 50,
                  alignment: Alignment.bottomCenter,
                  child: const Text("4.0 | 177 Reviews", style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontFamily: 'futura-regular',
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
