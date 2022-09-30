// ignore_for_file: prefer_const_constructors, sort_child_properties_last

//import 'dart:html';

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:type_s_led/widget/custom_button.dart';

class TypeA extends StatefulWidget {
  const TypeA({Key? key}) : super(key: key);

  @override
  State<TypeA> createState() => _TypeAState();
}

class _TypeAState extends State<TypeA> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
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
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background3.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height * 0.22,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/car.png"),
                              fit: BoxFit.cover)),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ImageIcon(
                        AssetImage("assets/icons/arrowhead.png"),
                        size: 40,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TypeA(),
                          ),
                        );
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        padding: EdgeInsets.only(left: 12, right: 12),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.blueAccent, width: 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(
                              AssetImage("assets/icons/folder.png"),
                              size: 40,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "SAVE PRESET",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                //fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TypeA(),
                          ),
                        );
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        padding: EdgeInsets.only(left: 12, right: 12),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.blueAccent, width: 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 2,
                            ),
                            ImageIcon(
                              AssetImage("assets/icons/selection.png"),
                              size: 40,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "SELECT PRESET",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                //fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TypeA(),
                          ),
                        );
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        padding: EdgeInsets.only(left: 12, right: 12),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.blueAccent, width: 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/icons/rgb.png"))),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              "SELECT COLOR",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                //fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TypeA(),
                          ),
                        );
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        padding: EdgeInsets.only(left: 12, right: 12),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.blueAccent, width: 1),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageIcon(
                              AssetImage("assets/icons/share.png"),
                              size: 32,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Text(
                              "SHARE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                //fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Container(
                height: 20,
                width: width,
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    "LED MODE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: CustomButton(text: "Glow"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
