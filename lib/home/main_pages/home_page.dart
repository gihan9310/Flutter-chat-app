import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/common/lets_chat.dart';
import 'package:chat_app/home/main_pages/chat_page.dart';
import 'package:chat_app/home/main_pages/message_options.dart';
import 'package:chat_app/home/main_pages/message_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MessageOptions(),
                        ));
          },
          backgroundColor: Colors.blue.shade500,
          child: Icon(Icons.chat),
        ),
        body: DefaultTabController(
            length: 4,
            child: Column(
              children: [
                Container(
                  height: size.height / 13,
                  color: Colors.blue.shade500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: size.width / 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, top: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  WavyAnimatedText(
                                    "Let's Chat",
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                                isRepeatingAnimation: true,
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                              Container(
                                // alignment: Alignment.centerRight,
                                padding: EdgeInsets.only(
                                    left: size.width / 10, top: 5),
                                width: size.width,
                                child: Text(
                                  'Chat life 😉',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        width: size.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 14),
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.blue.shade500,
                  height: size.height / 13,
                  child: TabBar(
                    labelColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Text(
                          "Chat",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // icon: Icon(Icons.chat),
                      ),
                      Tab(
                        child: Text(
                          "Social",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // icon: Icon(Icons.two_k),
                      ),
                      Tab(
                        child: Text(
                          "Status",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Calls",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // icon: Icon(Icons.theater_comedy),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ChatPage(),
                      Text('SSSS'),
                      Text('SSSS'),
                      Text('SSSS'),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
