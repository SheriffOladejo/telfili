import 'package:flutter/material.dart';
import 'package:telfili/adapters/babysitter_adapter.dart';
import 'package:telfili/adapters/filter_adapter.dart';
import 'package:telfili/adapters/schedule_adapter.dart';
import 'package:telfili/models/babysitter.dart';
import 'package:telfili/models/filter.dart';
import 'package:telfili/models/schedule.dart';
import 'package:telfili/utils/hex_color.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  var scheduleList = [];
  var filterList = [];
  var babysitterList = [];

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
            
          },
          child: Image.asset("assets/images/category.png"),
        ),
        centerTitle: true,
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Current location", style: TextStyle(
              color: Colors.black38,
              fontSize: 10,
              fontFamily: 'futura-regular',
            ),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/location pin icon.png", width: 20, height: 16,),
                Container(
                  height: 20,
                  alignment: Alignment.center,
                  child: const Text("Amman", style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-bold',
                    fontSize: 10
                  ),),
                )
              ],
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
              alignment: Alignment.center,
              height: 35,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: const InputDecoration(
                    hintText: "Search for a babysitter",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-medium',
                        fontSize: 16
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.blue,),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      borderSide: BorderSide.none,
                    ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 10),
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Upcoming schedule", style: TextStyle(
                    color: HexColor("#707070"),
                    fontSize: 16,
                    fontFamily: 'futura-bold',
                  ),),
                  const Text("See all", style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'futura-bold',
                    fontSize: 10,
                  ),),
                ],
              ),
            ),
            Container(height: 10,),
          ]),),
          SliverList(delegate: SliverChildListDelegate([
            Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: scheduleList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return ScheduleAdapter(schedule: scheduleList[index],);
              }),
            ),
          ]),),
          SliverList(delegate: SliverChildListDelegate(
            [
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                padding: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Let's find your babysitter", style: TextStyle(
                      color: HexColor("#707070"),
                      fontSize: 16,
                      fontFamily: 'futura-bold',
                    ),),
                    Image.asset("assets/images/filter.png", width: 50, height: 50,)
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: filterList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FilterAdapter(filter: filterList[index],);
                    }),
              ),
            ]
          ),),
          SliverList(delegate: SliverChildListDelegate([
            Container(
              width: MediaQuery.of(context).size.width,
              height: 240,
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: babysitterList.length,
                  itemBuilder: (context, index) {
                    return BabySitterAdapter(babySitter: babysitterList[index],);
                  }),
            ),
          ]),),
        ],
      )
    );
  }

  Future<void> init() async {

    scheduleList.add(Schedule(
      name: "Lareen Muhtaseb",
      image: "assets/images/babysitter1.png",
      type: "Babysitter appointment",
    ));
    scheduleList.add(Schedule(
      name: "Amira Radwan",
      image: "assets/images/babysitter2.png",
      type: "Babysitter appointment",
    ));
    scheduleList.add(Schedule(
      name: "Mohammad Al Shihabi",
      image: "assets/images/babysitter3.png",
      type: "Babysitter appointment",
    ));
    scheduleList.add(Schedule(
      name: "Andria Hattar",
      image: "assets/images/notif5.png",
      type: "Babysitter appointment",
    ));

    filterList.add(Filter(
      image: "assets/images/mother_child.png",
      title: "Certified babysitter"
    ));
    filterList.add(Filter(
        image: "assets/images/woman-teacher.png",
        title: "Tutoring skills"
    ));
    filterList.add(Filter(
        image: "assets/images/speaking-head.png",
        title: "Native english speaker"
    ));
    filterList.add(Filter(
        image: "assets/images/male cook.png",
        title: "Native arabic speaker"
    ));
    filterList.add(Filter(
        image: "assets/images/cleannnn.png",
        title: "Cleaning skills"
    ));

    babysitterList.add(BabySitter(
      name: "Andria Hattar",
      occupation: "Certified babysitter",
      image: "assets/images/babysitter1.png",
      stars: 4,
      reviews: "4.0 | 177 Reviews"
    ));
    babysitterList.add(BabySitter(
        name: "Mohammad Al Shihabi",
        occupation: "Experienced babysitter",
        image: "assets/images/babysitter3.png",
        stars: 4,
        reviews: "5.0 | 2.465 Reviews"
    ));
    babysitterList.add(BabySitter(
        name: "Amira Radwan",
        occupation: "Children-lover and babysitter",
        image: "assets/images/babysitter2.png",
        stars: 5,
        reviews: "5.0 | 521 Reviews"
    ));
    babysitterList.add(BabySitter(
        name: "Samira Ismaeel",
        occupation: "Grandmother and babysitter",
        image: "assets/images/babysitter4.png",
        stars: 3,
        reviews: "3.1 |278 Reviews"
    ));
    babysitterList.add(BabySitter(
        name: "Ahmad Noor",
        occupation: "Certified babysitter",
        image: "assets/images/babysitter5.png",
        stars: 5,
        reviews: "5.0 | 1.245 Reviews"
    ));

    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();
    init();
  }

}
