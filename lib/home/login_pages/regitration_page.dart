import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/common/lets_chat.dart';
import 'package:chat_app/home/login_pages/term_and_condition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final RoundedLoadingButtonController _gettingStart_button =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: size.width,
        // height: size.height,
        color: Colors.green,
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height / 3,
              color: Colors.amber,
              child: Container(
                width: size.width,
                height: size.height / 3,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                  ),
                ),
                child: LetsChatLables(size: size),

              ),
            ),
            Container(
              width: size.width,
              // height: size.height / 3,
              color: Colors.blue,
              child: Container(
                width: size.width,
                // height: size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(200),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      // height: size.height / 6,
                      width: size.width / 4,
                      child: Image.asset(
                        'assets/images/splash_screen.png',
                      ),
                    ),
                    Text(
                      "Registration",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        bottom: 20,
                        right: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.people),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        bottom: 20,
                        right: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        bottom: 20,
                        right: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.text_format),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        bottom: 20,
                        right: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Mobile',
                            prefixIcon: Icon(Icons.mobile_friendly),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        bottom: 20,
                        right: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.password_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        bottom: 20,
                        right: 20,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Re-Password',
                            prefixIcon: Icon(Icons.password_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            )),
                      ),
                    ),
                    RoundedLoadingButton(
                      child: Text(
                        'Registration',
                        style: TextStyle(color: Colors.white),
                      ),
                      controller: _gettingStart_button,
                      onPressed: () {
                        Timer(
                          Duration(seconds: 3),
                          () {
                            _gettingStart_button.success();
                          },
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
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
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

