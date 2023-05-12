import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:telfili/adapters/babysitter_adapter.dart';
import 'package:telfili/adapters/filter_adapter.dart';
import 'package:telfili/adapters/schedule_adapter.dart';
import 'package:telfili/models/babysitter.dart';
import 'package:telfili/models/filter.dart';
import 'package:telfili/models/schedule.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/terms_and_condition.dart';

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
            showMaterialModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              expand: false,
              builder: (context) => ContactUs(),
            );
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

class ContactUs extends StatefulWidget {

  const ContactUs({Key key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();

}

class _ContactUsState extends State<ContactUs> {

  bool english = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        height: 600,
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
            Container(height: 50,),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                showMaterialModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  expand: false,
                  builder: (context) => ContactUsForm(),
                );
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Contact us", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 14,
                    ),),
                    Icon(Icons.chevron_right, color: HexColor("#707070"), size: 18,)
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 0.5,
              color: HexColor("#707070"),
            ),
            Container(height: 20,),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Language", style: TextStyle(
                    color: HexColor("#707070"),
                    fontFamily: 'futura-regular',
                    fontSize: 14,
                  ),),
                  FlutterSwitch(
                    showOnOff: true,
                    value: english,
                    height: 20,
                    width: 45,
                    toggleSize: 15,
                    valueFontSize: 10,
                    activeText: "EN",
                    inactiveText: "AR",
                    inactiveTextColor: Colors.black,
                    inactiveColor: HexColor("#FFD9F0"),
                    activeTextFontWeight: FontWeight.normal,
                    inactiveTextFontWeight: FontWeight.normal,
                    onToggle: (val) {
                      setState(() {
                        english = !english;
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 0.5,
              color: HexColor("#707070"),
            ),
            Container(height: 20,),
            InkWell(
              onTap: () {
                Navigator.push(context, slideLeft(const TermsAndConditions()));
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Terms and Conditions", style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 14,
                    ),),
                    Icon(Icons.chevron_right, color: HexColor("#707070"), size: 18,)
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 0.5,
              color: HexColor("#707070"),
            ),
            Container(height: 20,),
          ],
        ),
      ),
    );
  }

}

class ContactUsForm extends StatefulWidget {

  const ContactUsForm({Key key}) : super(key: key);

  @override
  State<ContactUsForm> createState() => _ContactUsFormState();

}

class _ContactUsFormState extends State<ContactUsForm> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.transparent,
        child: Container(
          height: 600,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(35), topLeft: Radius.circular(35)),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Container(height: 20,),
              Text("Contact us", style: TextStyle(
                color: HexColor("#707070"),
                fontSize: 20,
                fontFamily: 'futura-medium'
              ),),
              Container(height: 20,),
              SizedBox(
                width: 250,
                height: 35,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-regular',
                        fontSize: 18,
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
              Container(height: 15,),
              SizedBox(
                width: 250,
                height: 35,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-regular',
                        fontSize: 18,
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
              Container(height: 15,),
              SizedBox(
                width: 250,
                height: 35,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: "Subject",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-regular',
                        fontSize: 18,
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
              Container(height: 15,),
              SizedBox(
                width: 250,
                height: 135,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  minLines: 8,
                  maxLines: 10,
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: "Message",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-regular',
                        fontSize: 18,
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
              Container(height: 10,),
              Container(height: 45,),
              Padding(
                padding:  const EdgeInsets.fromLTRB(100, 5, 100, 5),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                  color: HexColor("#FF66C4"),
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width - 20,
                    child: const Text(
                      "Send",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'futura-medium'
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}


