// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:type_s_led/screens/select_vehicle.dart';
import 'package:type_s_led/screens/type_a.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imageList = [
    "assets/images/slider1.jpg",
    "assets/images/slider2.png",
    "assets/images/slider3.jpg",
    "assets/images/slider4.jpg",
    "assets/images/slider5.jpg",
    "assets/images/slider6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: imageList
                      .map((item) => Container(
                            width: width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('$item'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: 220.0,
                    enlargeCenterPage: true,
                    /*  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                      _currentKeyword = keywords[_currentPage];
                    });
                  }, */

                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              height: 120,
                              width: 120,
                              padding: EdgeInsets.only(left: 12, right: 12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueAccent, width: 1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/icons/smart_hub.png"),
                                    size: 60,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    "SMART HUB",
                                    style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 120,
                              padding: EdgeInsets.only(left: 12, right: 12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueAccent, width: 1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage(
                                        "assets/icons/remote-control.png"),
                                    size: 60,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    "SMART DOME \n MOTERCYCLE",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      //fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 120,
                              padding: EdgeInsets.only(left: 12, right: 12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueAccent, width: 1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/icons/smart_hub.png"),
                                    size: 60,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    "PRO SERIES",
                                    style: TextStyle(
                                      fontSize: 16,
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
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 120,
                              padding: EdgeInsets.only(left: 12, right: 12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueAccent, width: 1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/icons/smart_hub.png"),
                                    size: 60,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    "SMART \n OFF-ROAD",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 120,
                              padding: EdgeInsets.only(left: 12, right: 12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueAccent, width: 1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/icons/smart_hub.png"),
                                    size: 60,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    "SMART EXTERIOR",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 120,
                              width: 120,
                              padding: EdgeInsets.only(left: 12, right: 12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueAccent, width: 1),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/icons/smart_hub.png"),
                                    size: 60,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    "SMART LED \n SWITCH",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
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
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
