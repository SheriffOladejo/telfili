import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:telfili/utils/hex_color.dart';

class Conversation extends StatefulWidget {

  const Conversation({Key key}) : super(key: key);

  @override
  State<Conversation> createState() => _ConversationState();

}

class _ConversationState extends State<Conversation> {

  List<Widget> messagesWidget = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: HexColor("#F2F2F2"),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor("#FF66C4"),
        title: Row(
          children: [
            Image.asset("assets/images/chat_user.png", width: 34, height: 34,),
            Container(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amira Radwan",
                  style: TextStyle(
                    color: HexColor("#FFFFFF"),
                    fontSize: 16,
                    fontFamily: 'futura-medium',
                  ),
                ),
                const Text(
                  "Online",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'futura-regular',
                  ),
                ),
              ],
            )
          ],
        )
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: SingleChildScrollView(
            child: Column(
                children: messagesWidget
            )
        ),
      ),
      bottomSheet: Container(
        color: HexColor("#F2F2F2"),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white
          ),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          margin: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(height: 1,),
              SizedBox(
                width: 240,
                child: TextField(
                  minLines: 1,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Write something",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: 'publicsans-regular',
                    )
                  ),
                ),
              ),
              GestureDetector(
                child: Image.asset('assets/images/send_.png'),
                onTap: () async {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> init() async {
    messagesWidget.add(Container(height: 10,));
    messagesWidget.add(Text("1:45 PM", style: TextStyle(
        color: HexColor("#ADABAB"),
        fontFamily: 'futura-regular',
        fontSize: 12,
      ),),);
    messagesWidget.add(Container(height: 15,));
    messagesWidget.add(BubbleSpecialOne(
        text: 'Hey! How are you? :)',
        isSender: false,
        color: Colors.white,
        textStyle: TextStyle(
          fontSize: 16,
          color: HexColor("#707070"),
          fontFamily: 'futura-medium'
        ),
    ),);
    messagesWidget.add(Container(height: 15,));
    messagesWidget.add(BubbleSpecialOne(
      text: 'I am fine, how are you?',
      isSender: true,
      color: Colors.blue,
      textStyle: TextStyle(
          fontSize: 16,
          color: HexColor("#FFFFFF"),
          fontFamily: 'futura-medium'
      ),
    ),);
    messagesWidget.add(Container(height: 15,));
    messagesWidget.add(BubbleSpecialOne(
      text: 'I just wanted to say that',
      isSender: false,
      color: Colors.white,
      textStyle: TextStyle(
          fontSize: 16,
          color: HexColor("#707070"),
          fontFamily: 'futura-medium'
      ),
    ),);
    messagesWidget.add(Container(height: 15,));
    messagesWidget.add(BubbleSpecialOne(
      text: 'I had so much fun with David!\nLooking forward to our next \nappointment.',
      isSender: false,
      color: Colors.white,
      textStyle: TextStyle(
          fontSize: 16,
          color: HexColor("#707070"),
          fontFamily: 'futura-medium'
      ),
    ),);
    messagesWidget.add(Container(height: 15,));
    messagesWidget.add(Text("1:47 PM", style: TextStyle(
        color: HexColor("#ADABAB"),
        fontFamily: 'futura-regular',
        fontSize: 12,
      ),),);
    messagesWidget.add(Container(height: 15,));
    messagesWidget.add(Stack(
      children: [
        BubbleSpecialOne(
          text: 'Awwh! David loved you!',
          isSender: true,
          color: Colors.blue,
          textStyle: TextStyle(
              fontSize: 16,
              color: HexColor("#FFFFFF"),
              fontFamily: 'futura-medium'
          ),
        ),
        Container(
          width: 400,
          alignment: Alignment.bottomRight,
          child: Container(
            width: 35,
            height: 25,
            margin: const EdgeInsets.only(top: 30, right: 15),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
            child: Image.asset("assets/images/love.png"),
          ),
        ),
      ],
    ),);
    setState(() {

    });
  }

  @override
  void initState() {
    super.initState();
    init();
  }

}
