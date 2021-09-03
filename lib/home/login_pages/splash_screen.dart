import 'package:chat_app/home/login_pages/getting_start.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) => {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GettingStartPage(),
              ))
        });
  }

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
              bottomRight: Radius.circular(230),
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
                topLeft: Radius.circular(230),
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
      ],
    ));
  }
}
