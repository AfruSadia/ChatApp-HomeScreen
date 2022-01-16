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
      "time": "\t\t\t\t4:35 PM",
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
      extendBody: true,
      backgroundColor: KColor.white.withOpacity(.98),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KColor.white.withOpacity(.98),
        leading: Icon(
          Icons.arrow_back_ios,
          color: KColor.black,
        ),
        title: Center(
          child: Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              const Image(
                image: AssetImage('images/chat_img.png'),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "Anaya Sanji",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Align(
                alignment: chatList[index]["type"] == "recieve"
                    ? Alignment.topLeft
                    : Alignment.topRight,
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: chatList[index]["type"] == "recieve"
                            ? KColor.white
                            : KColor.sendertext.withOpacity(0.1)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chatList[index]["message"],
                          style: TextStyle(
                              color: KColor.chattext,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        Container(
                          width: chatList[index]["message"] == "Hello"
                              ? 110
                              : chatList[index]["message"] == "Hi"
                                  ? 110
                                  : chatList[index]["message"] ==
                                          "How are you?😜"
                                      ? 181
                                      : chatList[index]["message"] ==
                                              "Nice, bro🤟"
                                          ? 233
                                          : chatList[index]["message"] ==
                                                  "Nice, bro🤟"
                                              ? 233
                                              : chatList[index]["message"] ==
                                                      "I heard u guys launching new product?"
                                                  ? 238
                                                  : chatList[index]
                                                              ["message"] ==
                                                          "Yes, It calls UiHunt"
                                                      ? 212
                                                      : 182,
                          child: Text(
                            chatList[index]["time"],
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontSize: 12, color: Color(0xFF002251)),
                          ),
                        )
                      ],
                    )),
              ),
            );
          }),
      bottomNavigationBar: Container(
        height: 100,
        //color: Colors.grey,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.only(
                  left: 20,
                ),
                height: 46,
                width: 46,
                child: const Image(
                  image: AssetImage('images/add.png'),
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              width: 8,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, top: 5),
              height: 54,
              width: 278,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: KColor.white),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: 'Type a message',
                    hintStyle: TextStyle(
                        color: Color(0xFF9093A3),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    suffixIcon: Image(
                      image: AssetImage('images/send.png'),
                    ),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
