import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newpractice/style/style.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  List chatList = [
    {
      "message": "Hello",
      "type": "sender",
      "time": "4:34 PM",
    },
    {
      "message": "Hi",
      "type": "recieve",
      "time": "4:34 PM",
    },
    {
      "message": "How are you?😜",
      "type": "sender",
      "time": "4:35 PM",
    },
    {
      "message": "Nice, bro🤟",
      "type": "recieve",
      "time": "4:34 PM",
    },
    {
      "message": "I heard u guys launching\n new product?",
      "type": "sender",
      "time": "4:35 PM",
    },
    {
      "message": "Yes, It calls UiHunt",
      "type": "recieve",
      "time": "4:34 PM",
    },
    {
      "message": "Thats Awesome 😍",
      "type": "sender",
      "time": "4:34 PM",
    },
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColor.chatbackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KColor.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: KColor.black,
        ),
        title: Center(
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Image(
                image: AssetImage('images/chat_img.png'),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Anaya Sanji",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    color: KColor.chattext),
              )
            ],
          ),
        ),
        actions: const [
          SizedBox(
            width: 60,
            child: Icon(
              Icons.call,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: chatList.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Align(
                alignment: chatList[index]["type"] == "recieve"
                    ? Alignment.topLeft
                    : Alignment.topRight,
                child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: chatList[index]["type"] == "recieve"
                            ? KColor.white
                            : KColor.sendertext.withOpacity(0.2)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chatList[index]["message"],
                          style: TextStyle(
                              color: KColor.chattext,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\t\t\t\t" + chatList[index]["time"],
                        )
                      ],
                    )),
              ),
            );
          }),
      bottomNavigationBar: Container(
        height: 80,
        color: KColor.white,
        child: Row(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 10),
                height: 50,
                width: 50,
                child: const Image(
                  image: AssetImage('images/add.png'),
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              width: 25,
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Type a message',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(right: 10),
                height: 25,
                width: 25,
                child: const Image(
                  image: AssetImage('images/send.png'),
                  fit: BoxFit.cover,
                )),
          ],
        ),
      ),
    );
  }
}
