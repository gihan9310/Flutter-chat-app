import 'package:flutter/material.dart';

class TermAndCondions extends StatefulWidget {
  const TermAndCondions({Key? key}) : super(key: key);

  @override
  _TermAndCondionsState createState() => _TermAndCondionsState();
}

class _TermAndCondionsState extends State<TermAndCondions> {
  bool _isAcceptTermAndContidons = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Accept Terms & Conditions'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  "You've surely seen these standard clauses before. Basically, this clause will make it clear that you provide your app as is and with no warranty attached. You'll also dispell your liability for things like errors, omissions, incidental damages, offensive content, malware and other things that you either cannot control or cannot constantly guarantee.Here's how Instagram included all of this information in one single clause, but spaced out into three different parts. This helps make a typically-dense clause like this more readable and less daunting to readers" *
                      4,
                ),
                Container(
                  width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      checkColor: Colors.white,

                      // fillColor:Colors.accents,
                      onChanged: (bool? val) {
                        setState(() {
                          _isAcceptTermAndContidons = val!;
                        });
                      },
                      value: _isAcceptTermAndContidons,
                    ),
                    Text('Accept')
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
