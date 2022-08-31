import 'package:banking/profile.dart';
import 'package:banking/screen2.dart';
import 'package:banking/screen3.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: const Text('Flutter UI'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: FlatButton(
              color: Colors.amberAccent,
              child: Text(
                'Screen 1',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProfileUi()));
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: FlatButton(
              color: Colors.amberAccent,
              child: Text(
                'Screen 2',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => FlatDesignScreen2(),
                  ),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: FlatButton(
              color: Colors.amberAccent,
              child: Text(
                'Screen 3',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => plantUIscreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
