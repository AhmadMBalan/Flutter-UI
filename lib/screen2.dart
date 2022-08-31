import 'package:flutter/material.dart';

class FlatDesignScreen2 extends StatefulWidget {
  FlatDesignScreen2({Key? key}) : super(key: key);

  @override
  State<FlatDesignScreen2> createState() => _FlatDesignScreen2State();
}

class _FlatDesignScreen2State extends State<FlatDesignScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.blue,
          icon: Icon(Icons.notifications),
          onPressed: () {
            print("AppBar Alarm Button Pressed");
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Hello,',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 28,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  ' Ahmad👋🏼',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  color: Colors.orange,
                  child: Text('Random'),
                ),
                Container(
                  height: 100,
                  color: Colors.red,
                  child: Text('Random'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
