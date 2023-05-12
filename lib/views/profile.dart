import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/profile_settings.dart';

class Profile extends StatefulWidget {

  const Profile({Key key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();

}

class _ProfileState extends State<Profile> {

  final double _initFabHeight = 120.0;
  double _fabHeight = 0;
  double _panelHeightOpen = 500;
  double _panelHeightClosed = 295.0;

  Widget body () {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/fam.png"),
          Container(height: 5,),
          Text("Mohammad Naser", style: TextStyle(
            color: HexColor("#707070"),
            fontFamily: 'futura-medium',
            fontSize: 20,
          ),),
          Container(height: 2,),
          const Text("@naserfam", style: TextStyle(
            color: Colors.grey,
            fontFamily: 'futura-regular',
            fontSize: 12,
          ),),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F2F2F2"),
      appBar: AppBar(
        backgroundColor: HexColor("#F2F2F2"),
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, slideLeft(const ProfileSettings()));
            },
            child: Image.asset("assets/images/settings box.png"),
          ),
          Container(width: 10),
        ],
      ),
      body: Stack(
        children: [
          SlidingUpPanel(
            maxHeight: _panelHeightOpen,
            minHeight: _panelHeightClosed,
            parallaxEnabled: true,
            parallaxOffset: .5,
            body: body(),
            panelBuilder: (sc) => panel(sc),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0)),
            onPanelSlide: (double pos) => setState(() {
              _fabHeight = pos * (_panelHeightOpen - _panelHeightClosed) +
                  _initFabHeight;
            }),
          ),
        ],
      ),
      bottomSheet: Container(
        color: Colors.blue,
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(35), topLeft: Radius.circular(35)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Container(
                  width: 80,
                  height: 5,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(height: 15,),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Appointments", style: TextStyle(
                  color: HexColor("#707070"),
                  fontFamily: 'futura-bold',
                  fontSize: 20,
                ),),
              ),
              Container(
                height: 25,
              ),
              Row(
                children: [
                  Container(width: 10,),
                  Image.asset("assets/images/appointment_image.png"),
                  Container(width: 10,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lareen Muhtaseb", style: TextStyle(
                        color: HexColor("#707070"),
                        fontSize: 14,
                        fontFamily: 'futura-medium',
                      ),),
                      Container(height: 5,),
                      Text("Babysitting session scheduled", style: TextStyle(
                        color: HexColor("#707070"),
                        fontFamily: 'futura-regular',
                        fontSize: 10,
                      ),),
                      Container(height: 10,),
                      Row(
                        children: [
                          Icon(CupertinoIcons.clock_fill, color: HexColor("#99C9F8"),),
                          Container(width: 10,),
                          Text("Sun, Feb 19, 09:00am", style: TextStyle(
                            color: HexColor("#707070"),
                            fontSize: 11,
                            fontFamily: 'futura-regular',
                          ),)
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget panel(ScrollController sc) {
    return Container(
      color: Colors.transparent,
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(35), topLeft: Radius.circular(35)),
          color: Colors.blue,
        ),
        child: Column(
          children: [
            Container(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Container(
                width: 80,
                height: 5,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            Container(height: 20,),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: const Text("My Information", style: TextStyle(
                color: Colors.white,
                fontFamily: 'futura-bold',
                fontSize: 20,
              ),),
            ),
            Container(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("My child's information", style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'futura-regular',
                    fontSize: 14,
                  ),),
                  Icon(Icons.chevron_right, color: Colors.white, size: 18,)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 0.5,
              color: Colors.white,
            ),
            Container(height: 20,),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Payment method", style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'futura-regular',
                    fontSize: 14,
                  ),),
                  Icon(Icons.chevron_right, color: Colors.white, size: 18,)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 0.5,
              color: Colors.white,
            ),
            Container(height: 20,),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Password", style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'futura-regular',
                    fontSize: 14,
                  ),),
                  Icon(Icons.chevron_right, color: Colors.white, size: 18,)
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 0.5,
              color: Colors.white,
            ),
            Container(height: 20,),
          ],
        ),
      ),
    );
  }

}
