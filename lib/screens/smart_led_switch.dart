// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SmartLedSwitch extends StatefulWidget {
  const SmartLedSwitch({Key? key}) : super(key: key);

  @override
  State<SmartLedSwitch> createState() => _SmartLedSwitchState();
}

class _SmartLedSwitchState extends State<SmartLedSwitch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Resto Lights",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: SafeArea(
          child: Center(
        child: Text(
          "TODO",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
      )),
    );
  }
}
