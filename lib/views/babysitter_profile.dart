import 'package:flutter/material.dart';
import 'package:telfili/models/babysitter.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';
import 'package:readmore/readmore.dart';
import 'package:telfili/views/make_appointment.dart';

class BabySitterProfile extends StatefulWidget {

  BabySitter babysitter;

  BabySitterProfile({
    this.babysitter
  });

  @override
  State<BabySitterProfile> createState() => _BabySitterProfileState();

}

class _BabySitterProfileState extends State<BabySitterProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F2F2F2"),
      appBar: AppBar(
        backgroundColor: HexColor("#F2F2F2"),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset("assets/images/back button.png"),
        ),
        actions: [
          GestureDetector(
            onTap: () {

            },
            child: Image.asset("assets/images/notification box.png"),
          ),
          Container(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 180,
                    width: 150,
                    child: Image.asset("assets/images/babysitter_big.png"),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 180,
                    width: 140,
                    child: Column(
                      children: [
                        Container(height: 10,),
                        Text("Amira Radwan", style: TextStyle(
                          color: HexColor("#707070"),
                          fontFamily: 'futura-medium',
                          fontSize: 20,
                        ),),
                        Container(height: 5,),
                        const Text("Children lover and babysitter", style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'futura-regular',
                          color: Colors.grey,
                        ),),
                        Container(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/star button.png"),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text("Rating", style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'futura-regular',
                                  fontSize: 11,
                                ),),
                                Text("4.9 out of 5", style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'futura-regular'
                                ),),
                              ],
                            )
                          ],
                        ),
                        Container(height: 10,),
                        Row(
                          children: [
                            Image.asset("assets/images/customers.png"),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text("Customers", style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'futura-regular',
                                  fontSize: 12,
                                ),),
                                Text("2000+", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: 'futura-regular'
                                ),),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    height: 180,
                    child: Image.asset("assets/images/customers.png"),
                  )
                ],
              ),
              Container(height: 10,),
              Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                color: Colors.white,
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Biography", style: TextStyle(
                        color: HexColor("#707070"),
                        fontFamily: 'futura-medium',
                        fontSize: 20,
                      ),),
                      Container(height: 5,),
                      const ReadMoreText(
                        'Hey! My name is Amira Radwan, and I am an experienced babysitter.'
                            ' I love to be challenged by tasks and chores to finish at home.'
                            ' I have great tutoring and cooking'
                            'skills, so I can help with homework and prepare meals for children.'
                            ' I am also adept at keeping kids entertained with fun activities and games.'
                            ' Contact me for reliable and trustworthy babysitting services.',
                        trimLines: 3,
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'futura-regular',
                          color: Colors.black,
                        ),
                        colorClickableText: Colors.blue,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        moreStyle: TextStyle(
                          fontSize: 11,
                          fontFamily: 'futura-bold',
                          color: Colors.blue,
                        ),
                        lessStyle: TextStyle(
                          fontSize: 11,
                          fontFamily: 'futura-bold',
                          color: Colors.blue,
                        ),
                      ),
                      Container(height: 5,),
                      Text("Location", style: TextStyle(
                        color: HexColor("#707070"),
                        fontFamily: 'futura-medium',
                        fontSize: 20,
                      ),),
                      Container(height: 5,),
                      Image.asset("assets/images/location pic.png"),
                      Container(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Reviews", style: TextStyle(
                            color: HexColor("#707070"),
                            fontSize: 20,
                            fontFamily: 'futura-medium',
                          ),),
                          const Text("See all", style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'futura-bold',
                            fontSize: 10,
                          ),),
                        ],
                      ),
                      Container(height: 5,),
                      const Text("521 Reviews", style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-regular',
                        fontSize: 8,
                      ),),
                      Container(height: 5,),
                      review("Abdallah Ramez", "Super cool attitude and amazing...", "assets/images/rating stars five.png"),
                      Container(height: 5,),
                      review("Rand Shakhshir", "All tasks were fulfilled by her. Good...", "assets/images/rating stars five.png"),
                      Container(height: 5,),
                      review("Dina Al Manaseer", "Overall good, but time management...", "assets/images/rating stars five.png"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 72,
        decoration: BoxDecoration(
          color: HexColor("#F0F0F0"),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        child: Container(
          alignment: Alignment.centerRight,
          width: 300,
          height: 50,
          child: MaterialButton(
            onPressed: () {
              Navigator.push(context, slideLeft(const MakeAppointment()));
            },
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            color: HexColor("#FF66C4"),
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 55,),
                  const Text(
                    "Make an appointment",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'futura-medium'
                    ),
                  ),
                  Container(width: 45,),
                  const Icon(Icons.chevron_right, color: Colors.white,)
                ],
              )

            ),
          ),
        ),
      ),
    );
  }

  Widget review(
      String name,
      String desc,
      String stars,
      ) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            padding: const EdgeInsets.all(4),
            child: Text(name.substring(0, 1).toUpperCase(), style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'futura-medium',
            ),),
          ),
          Container(
            width: 10,
          ),
          SizedBox(
            height: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(name, style: TextStyle(
                  color: HexColor("#707070"),
                  fontFamily: 'futura-medium',
                  fontSize: 10,
                ),),
                Text('"$desc"', style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 8,
                  fontFamily: 'futura-regular'
                ),),
              ],
            ),
          ),
          Container(width: 5,),
          SizedBox(
            height: 25,
            child: Column(
              children: [
                Container(height: 10,),
                Image.asset(stars)
              ],
            ),
          ),
        ],
      ),
    );
  }

}
