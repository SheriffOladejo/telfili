import 'package:flutter/material.dart';
import 'package:telfili/adapters/chat_adapter.dart';
import 'package:telfili/models/chat.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/search_widget.dart';

class ChatMessages extends StatefulWidget {

  const ChatMessages({Key key}) : super(key: key);

  @override
  State<ChatMessages> createState() => _ChatMessagesState();

}

class _ChatMessagesState extends State<ChatMessages> {

  bool isForward = false;

  var chatList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F2F2F2"),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor("#FF66C4"),
        title: const Text(
          "Chats",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'futura-medium',
              fontSize: 20
          ),
        ),
        actions: [
          SearchWidget(
            isForward: isForward,
          ),
          Container(width: 10,),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: chatList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ChatAdapter(chat: chatList[index]);
          }
        ),
      )
    );
  }

  Future<void> init() async {
    chatList.add(Chat(
      name: "Mohammad Al Shihabi",
      message: "Hello! How are you?",
      unread: false,
      image: "assets/images/chat1.png",
    ));
    chatList.add(Chat(
      name: "Amira Radwan",
      message: "I had so much fun with David!",
      unread: true,
      unreadCount: 2,
      image: "assets/images/chat2.png",
    ));
    chatList.add(Chat(
      name: "Andria Hattar",
      message: "I received the payment, thanks!",
      unread: false,
      image: "assets/images/chat3.png",
    ));
    chatList.add(Chat(
      name: "Ahmad Noor",
      message: "I am on my way!",
      unread: false,
      image: "assets/images/chat4.png",
    ));
    chatList.add(Chat(
      name: "Samira Ismaeel",
      message: "No problem. Bye. :)",
      unread: true,
      unreadCount: 1,
      image: "assets/images/chat5.png",
    ));
    setState(() {

    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

}
