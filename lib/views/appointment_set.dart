import 'package:flutter/material.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/homepage.dart';

class AppointmentSet extends StatefulWidget {

  const AppointmentSet({Key key}) : super(key: key);

  @override
  State<AppointmentSet> createState() => _AppointmentSetState();

}

class _AppointmentSetState extends State<AppointmentSet> {

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
        actions: [
          GestureDetector(
            onTap: () async {

            },
            child: Image.asset("assets/images/settings box.png"),
          ),
          Container(width: 10,),
        ],
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
                    color: Colors.blue,
                  ),
                  alignment: Alignment.center,
                  child: Text(
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
            const Spacer(),
            Text("Your appointment is all set", style: TextStyle(
              fontSize: 30,
              fontFamily: 'futura-medium',
              color: HexColor("#707070"),
            ),),
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
                  Navigator.pushAndRemoveUntil(context, slideLeft(const HomePage()));
                  Navigator.pushReplacement(context, slideLeft(const HomePage()));
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
                          "Back to home",
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
              child: const Text("", style: TextStyle(
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
