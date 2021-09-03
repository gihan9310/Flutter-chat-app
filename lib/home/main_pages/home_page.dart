import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
            length: 4,
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                  child: TabBar(
                   labelColor: Colors.white ,
                    tabs: [
                      Tab(
                        text: 'Tab One',
                        icon: Icon(Icons.one_k_plus),
                      ),
                      Tab(
                        text: 'Tab Two',
                        icon: Icon(Icons.two_k),
                      ),
                      Tab(
                        text: 'Tab One',
                        icon: Icon(Icons.theater_comedy),
                      ),
                      Tab(
                        text: 'Tab One',
                        icon: Icon(Icons.theater_comedy),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Text('SSSS'),
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
