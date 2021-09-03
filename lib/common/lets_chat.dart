import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LetsChatLables extends StatelessWidget {
  const LetsChatLables({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            WavyAnimatedText(
              "Let's Chat",
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
          isRepeatingAnimation: true,
          onTap: () {
            print("Tap Event");
          },
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: size.width/4.5,top: 5),
          width: size.width,
          child: Text('Chat life 😉',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,fontStyle: FontStyle.italic,color: Colors.white),),
        )
      ],
    );
  }
}
