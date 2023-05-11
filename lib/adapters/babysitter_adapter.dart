import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
                Image.asset(widget.babySitter.image, width: 70, height: 70,scale: 0.7,),
                Container(width: 10,),
                SizedBox(
                  width: 130,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 5,),
                      Text(widget.babySitter.name, style: TextStyle(
                        color: HexColor("#707070"),
                        fontFamily: 'futura-medium',
                        fontSize: 14,
                      ),),
                      Container(height: 10,),
                      Text(widget.babySitter.occupation, style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-regular',
                        fontSize: 10,
                      ),),
                      Container(height: 5,),
                      Container(
                        width: 60,
                        child: RatingBar.builder(
                          initialRating: widget.babySitter.stars,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 12,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          unratedColor: Colors.grey,
                          onRatingUpdate: (rating) {

                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(right: 10),
                  alignment: Alignment.bottomRight,
                  child: Text(widget.babySitter.reviews, style: TextStyle(
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
