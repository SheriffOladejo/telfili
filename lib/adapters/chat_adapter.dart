import 'package:flutter/material.dart';
import 'package:telfili/models/chat.dart';
import 'package:telfili/utils/hex_color.dart';
import 'package:telfili/utils/methods.dart';
import 'package:telfili/views/conversation.dart';

class ChatAdapter extends StatefulWidget {

  Chat chat;

  ChatAdapter({this.chat});

  @override
  State<ChatAdapter> createState() => _ChatAdapterState();

}

class _ChatAdapterState extends State<ChatAdapter> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, slideLeft(const Conversation()));
      },
      child: Container(
        color: HexColor("#F2F2F2"),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 6,
              height: 75,
              color: widget.chat.unread ? Colors.blue : HexColor("#F2F2F2"),
            ),
            Image.asset(widget.chat.image, width: 58, height: 58,),
            Container(
              alignment: Alignment.centerLeft,
              width: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.chat.name,
                    style: TextStyle(
                      color: HexColor("#707070"),
                      fontSize: 18,
                      fontFamily: 'futura-medium',
                    ),
                  ),
                  Container(height: 5,),
                  Text(
                    widget.chat.message,
                    style: TextStyle(
                      color: widget.chat.unread ? Colors.blue : HexColor("#938E8E"),
                      fontSize: 16,
                      fontFamily: 'futura-regular',
                    ),
                  ),
                ],
              ),
            ),
            widget.chat.unread ? Container(
              alignment: Alignment.center,
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(24))
              ),
              child: Text(
                widget.chat.unreadCount.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'futura-regular',
                  fontSize: 16
                ),
              ),
            ) : Container(width: 24,),
            Container(height: 80,),
          ],
        ),
      ),
    );
  }

}
