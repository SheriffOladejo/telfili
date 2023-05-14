import 'package:flutter/material.dart';
import 'package:telfili/utils/hex_color.dart';

class Notifications extends StatefulWidget {

  const Notifications({Key key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();

}

class _NotificationsState extends State<Notifications> {

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F0F0F0"),
      appBar: AppBar(
        backgroundColor: HexColor("#F0F0F0"),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 20,),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Text("Today", style: TextStyle(
                color: HexColor("#707070"),
                fontFamily: 'futura-medium',
                fontSize: 20,
              ),),
            ),
            Container(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset("assets/images/notif1.png", width: 36, height: 36,),
                  ),
                  const SizedBox(
                    width: 220,
                    child: Text("A new certified babysitter! Check her out.", style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    ),),
                  ),
                  const SizedBox(
                    width: 50,
                    child: Text("22 h", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: 'futura-regular',
                    ),),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Text("Yesterday", style: TextStyle(
                color: HexColor("#707070"),
                fontFamily: 'futura-medium',
                fontSize: 20,
              ),),
            ),
            Container(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset("assets/images/notif2.png", width: 36, height: 36,),
                  ),
                  const SizedBox(
                    width: 220,
                    child: Text("Babysitting appointment scheduled.", style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    ),),
                  ),
                  const SizedBox(
                    width: 50,
                    child: Text("1 d", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: 'futura-regular',
                    ),),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Text("This week", style: TextStyle(
                color: HexColor("#707070"),
                fontFamily: 'futura-medium',
                fontSize: 20,
              ),),
            ),
            Container(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset("assets/images/notif3.png", width: 36, height: 36,),
                  ),
                  const SizedBox(
                    width: 220,
                    child: Text("We found you the perfect babysitter.", style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    ),),
                  ),
                  const SizedBox(
                    width: 50,
                    child: Text("1 d", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: 'futura-regular',
                    ),),
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset("assets/images/notif5.png", width: 36, height: 36,),
                  ),
                  const SizedBox(
                    width: 220,
                    child: Text("Appointment is confirmed.", style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    ),),
                  ),
                  const SizedBox(
                    width: 50,
                    child: Text("2 d", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: 'futura-regular',
                    ),),
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset("assets/images/notif4.png", width: 36, height: 36,),
                  ),
                  const SizedBox(
                    width: 220,
                    child: Text("Reminder: Your babysitting session is ending soon.", style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    ),),
                  ),
                  const SizedBox(
                    width: 50,
                    child: Text("4 d", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: 'futura-regular',
                    ),),
                  ),
                ],
              ),
            ),
            Container(
              height: 10,
            ),
            const Divider(),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(bottom: 50),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: 122,
        decoration: BoxDecoration(
          color: HexColor("#F0F0F0"),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        child: Container(
          alignment: Alignment.centerRight,
          width: 300,
          height: 50,
          child: MaterialButton(
            onPressed: () {
              setState(() {
                value = !value;
              });
            },
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            color: HexColor("#FF66C4"),
            child: Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Notifications",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'futura-medium'
                      ),
                    ),
                    Switch(
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value;
                        });
                      }
                    )
                  ],
                )

            ),
          ),
        ),
      ),
    );
  }

}
