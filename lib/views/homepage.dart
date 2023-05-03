import 'package:flutter/material.dart';
import 'package:telfili/adapters/babysitter_adapter.dart';
import 'package:telfili/adapters/filter_adapter.dart';
import 'package:telfili/adapters/schedule_adapter.dart';
import 'package:telfili/utils/hex_color.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            Text("Current location", style: TextStyle(
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
                  child: Text("Amman", style: TextStyle(
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
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
              alignment: Alignment.center,
              height: 35,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                    hintText: "Search for a babysitter",
                    hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-medium',
                        fontSize: 16
                    ),
                    prefixIcon: const Icon(Icons.search, color: Colors.blue,),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    )
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
                  Text("See all", style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'futura-regular',
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
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return ScheduleAdapter();
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
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FilterAdapter();
                    }),
              ),
            ]
          ),),
          SliverList(delegate: SliverChildListDelegate([
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return BabySitterAdapter();
                  }),
            ),
          ]),),
        ],
      )
    );
  }

}
