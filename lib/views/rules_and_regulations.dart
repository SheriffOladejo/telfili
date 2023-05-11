import 'package:flutter/material.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/confirmation.dart';

class RulesAndRegulations extends StatefulWidget {

  @override
  State<RulesAndRegulations> createState() => _RulesAndRegulationsState();

}

class _RulesAndRegulationsState extends State<RulesAndRegulations> {

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
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(32)),
                    color: HexColor("#707070"),
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
                    color: HexColor("#E0E0E0"),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "4",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(width: 5,),
              ],
            ),
            Container(height: 8,),
            Text("Rules and obligations", style: TextStyle(
              fontSize: 16,
              fontFamily: 'futura-medium',
              color: HexColor("#707070"),
            ),),
            Container(height: 8,),
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
                    Text("Payment", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-medium',
                      fontSize: 20,
                    ),),
                    Container(height: 5,),
                    Text("\u2022 Payment must be made before or after the session, depending on "
                      "babysitter's desire", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    )),
                    Container(height: 3,),
                    Text("\u2022 Payment must be paid either in cash or credit card, depending on "
                        "babysitter’s desire", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    )),
                    Container(height: 3,),
                    Text("\u2022 Payment must be refunded, if the babysitter does not fulfill the "
                        "desired requirements", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    )),
                    Container(height: 3,),
                    Text("\u2022 Payment will be refunded if the babysitter cancels the session", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    )),
                    Container(height: 5,),
                    Text("Appointment", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-medium',
                      fontSize: 20,
                    ),),
                    Container(height: 5,),
                    Text("\u2022 Parent must be on time when picking up or dropping off child", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    )),
                    Container(height: 3,),
                    Text("\u2022 Cancellation from the parent may cause no refund", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    )),
                    Container(height: 3,),
                    Text("\u2022 Parent may cancel the session and receive a full refund, if the"
                        " babysitter is late to the session", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    )),
                    Container(height: 5,),
                    Text("Health", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-medium',
                      fontSize: 20,
                    ),),
                    Container(height: 5,),
                    Text("\u2022 If the child has any health conditions or allergies, please notify"
                        " the babysitter beforehand", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    )),
                    Container(height: 5,),
                  ],
                ),
              ),
            ),
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
                  Navigator.push(context, slideLeft(const Confirmation()));
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
