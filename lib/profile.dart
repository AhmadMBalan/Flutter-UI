// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildTopContainer(size),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(right: 16, left: 16),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 20,
                  blurRadius: 30,
                  offset: Offset(0, 20),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.credit_card),
                SizedBox(width: 20),
                Text("Debit Card"),
                Expanded(
                    child: Text(
                  "\$36",
                  textAlign: TextAlign.end,
                ))
              ],
            ),
          ),
        ],
      ),
      
    );
  }

  Widget _buildTopContainer(Size size) {
    return Container(
      height: size.height * .45,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 233, 228, 228),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
            topLeft: Radius.zero,
            topRight: Radius.zero,
          )),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: _buildProfilePictureWidget(size),
          ),
        ],
      ),
    );
  }

  Widget _buildProfilePictureWidget(Size size) {
    return Container(
      height: size.width * 0.30,
      width: size.width * 0.30,
      child: Center(
          child: Text(
        "AB",
        style: TextStyle(fontSize: 60),
      )),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 233, 2, 228),
        borderRadius: BorderRadius.all(
          Radius.circular(200),
        ),
      ),
    );
  }
}
