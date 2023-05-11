import 'package:flutter/material.dart';
import 'package:telfili/adapters/task_adapter.dart';
import 'package:telfili/models/task.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/rules_and_regulations.dart';

class SelectTask extends StatefulWidget {

  const SelectTask({Key key}) : super(key: key);

  @override
  State<SelectTask> createState() => _SelectTaskState();

}

class _SelectTaskState extends State<SelectTask> {

  var taskList = [];

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
              height: MediaQuery.of(context).size.height - 330,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(10),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 10 / 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: taskList.length,
                itemBuilder: (context, index) {
                  return TaskAdapter(task: taskList[index],);
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

  Future<void> init() async {
    taskList.add(Task(
        image: "assets/images/books.png",
        title: "Study"
      ));
    taskList.add(Task(
            image: "assets/images/bathe.png",
            title: "Bathe"
        ));
    taskList.add(Task(
            image: "assets/images/movie.png",
            title: "Movie"
        ));
    taskList.add(
        Task(
            image: "assets/images/baby logo.png",
            title: "Nap"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/football.png",
            title: "Soccer"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/socks.png",
            title: "Laundry"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/walk.png",
            title: "Walk"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/game_pad.png",
            title: "Play games"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/notepad.png",
            title: "Draw"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/apple.png",
            title: "Eat"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/music.png",
            title: "Listen to music"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/book.png",
            title: "Read a book"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/video call.png",
            title: "Video call"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/cook.png",
            title: "Cook"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/brush.png",
            title: "Brush"
        )
    );
    taskList.add(
        Task(
            image: "assets/images/cleannnn.png",
            title: "Clean"
        )
    );

    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();
    init();
  }

}
