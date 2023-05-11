import 'package:flutter/material.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/appointment_set.dart';

class Confirmation extends StatefulWidget {

  const Confirmation({Key key}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();

}

class _ConfirmationState extends State<Confirmation> {

  var fromController = TextEditingController(text: "02:27 PM");
  var toController = TextEditingController(text: "05:00 PM");

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F0F0F0"),
      appBar: AppBar(
        backgroundColor: HexColor("#F0F0F0"),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Image.asset("assets/images/back button.png"),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    color: Colors.blue,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'futura-regular',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(width: 5,),
                Image.asset("assets/images/ellipsis.png"),
                Container(width: 5,),
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    color: Colors.blue,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "2",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'futura-regular',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(width: 5,),
                Image.asset("assets/images/ellipsis.png"),
                Container(width: 5,),
                Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    color: Colors.blue,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "3",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'futura-regular',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(width: 5,),
                Image.asset("assets/images/ellipsis.png"),
                Container(width: 5,),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(32)),
                    color: HexColor("#707070"),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "4",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'futura-regular',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(width: 5,),
              ],
            ),
            Container(height: 8,),
            Text("Confirmation", style: TextStyle(
              fontSize: 16,
              fontFamily: 'futura-medium',
              color: HexColor("#707070"),
            ),),
            const Spacer(),
            Card(
              color: Colors.white,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Date and time", style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'futura-medium',
                      color: HexColor("#707070"),
                    ),),
                    Container(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("From", style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'futura-regular',
                              fontSize: 12,
                            ),),
                            Container(height: 3,),
                            RichText(
                                text: TextSpan(
                                    text: "8",
                                    style: TextStyle(
                                      color: HexColor("#1784F1"),
                                      fontSize: 18,
                                      fontFamily: 'futura-medium',
                                    ),
                                    children: const [
                                      TextSpan(
                                        text: "May 2023",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontFamily: 'futura-regular',
                                        ),
                                      )
                                    ]
                                )
                            ),
                            Container(height: 3,),
                            Container(
                              alignment: Alignment.center,
                              width: 65,
                              height: 25,
                              child: TextFormField(
                                controller: fromController,
                                scrollPadding: const EdgeInsets.all(0),
                                readOnly: true,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'futura-regular',
                                  fontSize: 9,
                                ),
                                keyboardType: TextInputType. number,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                    counterText: "",
                                    hintText: "Time",
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'futura-regular',
                                      fontSize: 9,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("To", style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'futura-regular',
                              fontSize: 12,
                            ),),
                            Container(height: 3,),
                            RichText(
                                text: TextSpan(
                                    text: "22",
                                    style: TextStyle(
                                      color: HexColor("#1784F1"),
                                      fontSize: 18,
                                      fontFamily: 'futura-medium',
                                    ),
                                    children: const [
                                      TextSpan(
                                        text: "August 2023",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontFamily: 'futura-regular',
                                        ),
                                      )
                                    ]
                                )
                            ),
                            Container(height: 3,),
                            Container(
                              alignment: Alignment.center,
                              width: 65,
                              height: 25,
                              child: TextFormField(
                                controller: toController,
                                scrollPadding: const EdgeInsets.all(0),
                                readOnly: true,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'futura-regular',
                                  fontSize: 9,
                                ),
                                keyboardType: TextInputType. number,
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                    counterText: "",
                                    hintText: "Time",
                                    hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'futura-regular',
                                      fontSize: 9,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    )
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ),
            ),
            Container(height: 8,),
            Card(
              color: Colors.white,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Container(
                  margin: const EdgeInsets.all(10),
                  child:  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tasks", style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'futura-medium',
                            color: HexColor("#707070"),
                          ),),
                          const Icon(Icons.arrow_right_alt, color: Colors.grey,)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            color: Colors.blue,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            elevation: 3,
                            child: Container(
                              margin: const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/football.png", width: 50, height: 45,),
                                  Container(width: 5,),
                                  Text("Play soccer", style: TextStyle(color: HexColor("#ffffff"), fontSize: 14, fontFamily: 'futura-medium'),),
                                  Container(width: 3,),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Colors.blue,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            ),
                            elevation: 3,
                            child: Container(
                              margin: const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/game_pad.png", width: 50, height: 45,),
                                  Container(width: 5,),
                                  Text("Play games", style: TextStyle(color: HexColor("#ffffff"), fontSize: 14, fontFamily: 'futura-medium'),),
                                  Container(width: 3,),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
              ),
            ),
            Container(height: 8,),
            Card(
              color: Colors.white,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Container(
                  margin: const EdgeInsets.all(10),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Rules and obligations", style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'futura-medium',
                        color: HexColor("#707070"),
                      ),),
                      Container(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('I accept all rules and obligations', style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'futura-regular',
                            color: HexColor("#707070"),
                          ),),
                          Checkbox(
                            value: value,
                            onChanged:(bool value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  )
              ),
            ),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 90,
        color: HexColor("#F0F0F0"),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: 300,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(context, slideLeft(const AppointmentSet()));
                },
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                color: HexColor("#FF66C4"),
                child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Mark step as completed",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'futura-medium'
                          ),
                        ),
                      ],
                    )

                ),
              ),
            ),
            Container(height: 15,),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel", style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'futura-regular',
                  fontSize: 16
              ),),
            )
          ],
        ),
      ),
    );
  }

}
