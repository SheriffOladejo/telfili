import 'package:flutter/material.dart';
import 'package:telfili/utils/hex_color.dart';

class ProfileSettings extends StatefulWidget {

  const ProfileSettings({Key key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();

}

class _ProfileSettingsState extends State<ProfileSettings> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 20,),
              SizedBox(
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
                    Text("@naserfam", style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    ),),
                  ],
                ),
              ),
              Container(height: 40,),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text("My name", style: TextStyle(
                  color: HexColor("#707070"),
                  fontFamily: 'futura-medium',
                  fontSize: 14,
                ),),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                alignment: Alignment.center,
                height: 45,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      hintText: "Mohammed Naser",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontFamily: 'futura-medium',
                        fontSize: 12,
                      ),
                  ),
                ),
              ),
              Container(height: 15,),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text("Gender", style: TextStyle(
                  color: HexColor("#707070"),
                  fontFamily: 'futura-medium',
                  fontSize: 14,
                ),),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                alignment: Alignment.center,
                height: 45,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "Male",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'futura-medium',
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Container(height: 15,),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text("My email", style: TextStyle(
                  color: HexColor("#707070"),
                  fontFamily: 'futura-medium',
                  fontSize: 14,
                ),),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                alignment: Alignment.center,
                height: 45,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "mohnaser@gmail.com",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'futura-medium',
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Container(height: 15,),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text("Phone number", style: TextStyle(
                  color: HexColor("#707070"),
                  fontFamily: 'futura-medium',
                  fontSize: 14,
                ),),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                alignment: Alignment.center,
                height: 45,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'futura-regular',
                    fontSize: 18,
                  ),
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "+962 79 68 666 28",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'futura-medium',
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Container(height: 45,),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
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
                  Navigator.pop(context);
                },
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                color: HexColor("#FF66C4"),
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Save",
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
    );
  }

}
