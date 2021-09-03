import 'dart:async';

import 'package:chat_app/home/login_pages/login_page.dart';
import 'package:chat_app/home/login_pages/term_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class GettingStartPage extends StatefulWidget {
  const GettingStartPage({Key? key}) : super(key: key);

  @override
  _GettingStartPageState createState() => _GettingStartPageState();
}

class _GettingStartPageState extends State<GettingStartPage> {
  final RoundedLoadingButtonController _gettingStart_button =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.topEnd,
      fit: StackFit.loose,
      children: [
        Container(
          height: size.height,
          width: size.width,
          color: Colors.green,
        ),
        Container(
          height: size.height / 3,
          width: size.width,
          color: Colors.amber,
        ),
        Container(
          height: size.height / 3,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(230),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: size.height / 1.5,
            width: size.width,
            color: Colors.blue,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: size.height / 1.5,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(230),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: size.height / 6,
                  width: size.width / 4,
                  child: Image.asset(
                    'assets/images/splash_screen.png',
                  ),
                ),
                Text(
                  "Let's Chat",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
              width: size.width,
              height: size.height / 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RoundedLoadingButton(
                    child: Text('Getting Stated',
                        style: TextStyle(color: Colors.white)),
                    controller: _gettingStart_button,
                    onPressed: () {
                      Timer(Duration(seconds: 3), () {
                        _gettingStart_button.success();
                            Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ));
                      });
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    child: Text(
                      'Accept Terms & Conditions',
                      style: TextStyle(
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TermAndCondions(),
                          ));
                    },
                  )
                ],
              )),
        )
      ],
    ));
  }
}
