import 'package:flutter/material.dart';
import 'package:telfili/adapters/task_adapter.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/make_appointment.dart';
import 'package:telfili/views/rules_and_regulations.dart';

class SelectTask extends StatefulWidget {

  const SelectTask({Key key}) : super(key: key);

  @override
  State<SelectTask> createState() => _SelectTaskState();

}

class _SelectTaskState extends State<SelectTask> {

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
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(32)),
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
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(32)),
                    color: HexColor("#707070"),
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
                    color: HexColor("#E0E0E0"),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "3",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("#707070"),
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
            Text("Select the required tasks", style: TextStyle(
              fontSize: 16,
              fontFamily: 'futura-medium',
              color: HexColor("#707070"),
            ),),
            Container(height: 8,),
            Container(
              height: MediaQuery.of(context).size.height - 300,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 10 / 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 15,
                itemBuilder: (context, index) {
                  return TaskAdapter();
                }
              )
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: HexColor("#F0F0F0"),
        height: 90,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              width: 300,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, slideLeft(RulesAndRegulations()));
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
