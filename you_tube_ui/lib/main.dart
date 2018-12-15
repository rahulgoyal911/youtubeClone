import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new yt(),
    );
  }
}

class yt extends StatefulWidget {
  @override
  _ytState createState() => _ytState();
}

class _ytState extends State<yt> {
  int _currentIndex = 0;
  final List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white, actions: <Widget>[
          Image.asset(
            'pics/youtube.png',
            width: 120.0,
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(115, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.videocam, color: Colors.black),
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(13.0, 0, 0, 0),
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.more_vert, color: Colors.black),
                                ],
                              ))
                        ],
                      )),
                ],
              ))
        ]),
        bottomNavigationBar: new Container(
          color: Colors.black,
          //backgroundColor: Color.fromARGB(255, 32, 32, 32),

          child: new BottomNavigationBar(
            onTap: onTabTapped,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.trending_up),
                title: new Text('Trending'),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.subscriptions),
                  title: Text('Subscriptions')),
              BottomNavigationBarItem(
                icon: new Icon(Icons.inbox),
                title: new Text('Inbox'),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_library), title: Text('Library'))
            ],
          ),
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
