// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:resto_lights/screens/off_road.dart';
import 'package:resto_lights/screens/pro_series.dart';
import 'package:resto_lights/screens/profile.dart';
import 'package:resto_lights/screens/smart_dome.dart';
import 'package:resto_lights/screens/smart_exterior.dart';
import 'package:resto_lights/screens/smart_hub.dart';
import 'package:resto_lights/screens/smart_led_switch.dart';

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: imageList
                      .map((item) => Container(
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                    autoPlayAnimationDuration: Duration(milliseconds: 1200),
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
                                  builder: (context) => SmartHub(),
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
                                    size: 65,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    "SMART HUB",
                                    style: TextStyle(
                                      fontSize: 14,
                                      //fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SmartDome(),
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
                                  builder: (context) => ProSeries(),
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
                                    AssetImage("assets/icons/pro_series.png"),
                                    size: 70,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    height: height * 0.008,
                                  ),
                                  Text(
                                    "PRO SERIES",
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
                        ],
                      ),
                      SizedBox(
                        height: height * 0.018,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OffRoad(),
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
                                    AssetImage("assets/icons/off_road.png"),
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
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SmartExterior(),
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
                                    AssetImage("assets/icons/exterior.png"),
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
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SmartLedSwitch(),
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
                                    AssetImage("assets/icons/led_switch.png"),
                                    size: 65,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Text(
                                    "SMART LED \n SWITCH",
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
                        ],
                      ),
                    ],
                  ),
                ),
                /*  SizedBox(
                  height: height * 0.01,
                ), */
                Expanded(child: Center()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 16.0, left: 130, right: 130),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: ImageIcon(
                            AssetImage("assets/icons/facebook.png"),
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ImageIcon(
                            AssetImage("assets/icons/instagram.png"),
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ImageIcon(
                            AssetImage("assets/icons/share.png"),
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
