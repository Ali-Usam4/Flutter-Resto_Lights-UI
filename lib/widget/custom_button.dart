// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatefulWidget {
  String? text;
  CustomButton({Key? key, @required this.text}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 40,
      child: Center(
        child: Text(
          "GLOW",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent, width: 01),
      ),
    );
  }
}
