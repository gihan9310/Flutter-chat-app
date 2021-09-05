import 'package:flutter/material.dart';

class MessageOptions extends StatefulWidget {
  const MessageOptions({Key? key}) : super(key: key);

  @override
  _MessageOptionsState createState() => _MessageOptionsState();
}

class _MessageOptionsState extends State<MessageOptions> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Options'),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            size: 30,
          ),
          Icon(
            Icons.more_vert,
            size: 30,
          )
        ],
      ),
      body: Container(
          width: size.width,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.people),
                    Text("New Group ")
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }
}
