// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print

//import 'dart:html';

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:resto_lights/screens/select_vehicle.dart';
import 'package:resto_lights/widget/select_color.dart';

class TypeA extends StatefulWidget {
  const TypeA({Key? key}) : super(key: key);

  @override
  State<TypeA> createState() => _TypeAState();
}

class _TypeAState extends State<TypeA> {
  List<bool> isSelected = [true, false, false, false, false, false];
  List<String> data = ['GLOW', "BLINK", "STROBE", "FADE", "PRISM", "CYCLE"];

  int? brightness = 5;
  int? speed = 5;

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
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage("assets/images/background3.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.42,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectVehicle(),
                            ));
                      },
                      child: ImageIcon(
                        AssetImage("assets/icons/arrowhead.png"),
                        size: 36,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
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
                        border: Border.all(color: Colors.blueAccent, width: 1),
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
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
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
                        border: Border.all(color: Colors.blueAccent, width: 1),
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
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
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
                          builder: (context) => SelectColor(),
                        ),
                      );
                    },
                    child: Container(
                      height: 90,
                      width: 90,
                      padding: EdgeInsets.only(left: 12, right: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent, width: 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/icons/rgb.png"))),
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            "SELECT COLOR",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
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
                        border: Border.all(color: Colors.blueAccent, width: 1),
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
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
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
                height: 12.0,
              ),
              SizedBox(
                height: 110,
                child: ScrollConfiguration(
                  behavior: const MaterialScrollBehavior()
                      .copyWith(overscroll: false),
                  child: GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    childAspectRatio: 3,
                    mainAxisSpacing: 8,
                    children: List.generate(isSelected.length, (index) {
                      //using Inkwell widget to create a button
                      return InkWell(
                        splashColor: Colors.blueAccent,
                        onTap: () {
                          setState(() {
                            for (int indexBtn = 0;
                                indexBtn < isSelected.length;
                                indexBtn++) {
                              if (indexBtn == index) {
                                isSelected[indexBtn] = true;
                                print(data[indexBtn]);
                              } else {
                                isSelected[indexBtn] = false;
                              }
                            }
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                isSelected[index] ? Colors.blue : Colors.black,
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Center(
                            child: Text(
                              data[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: isSelected[index]
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              //set the color of the icon when it is selected/ not selected
                              //color: isSelected[index] ? Colors.blue : Colors.grey),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BRIGHTNESS",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageIcon(
                        AssetImage("assets/icons/brightness_low.png"),
                        size: 22,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: width * 0.8,
                        child: Slider(
                          inactiveColor: Colors.white,
                          value: brightness!.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              brightness = value.toInt();
                            });
                          },
                          min: 5,
                          max: 100,
                        ),
                      ),
                      ImageIcon(
                        AssetImage("assets/icons/brightness_high.png"),
                        size: 22,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Text(
                    "SPEED",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageIcon(
                        AssetImage("assets/icons/speed_low.png"),
                        size: 22,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: width * 0.8,
                        child: Slider(
                          inactiveColor: Colors.white,
                          value: speed!.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              speed = value.toInt();
                            });
                          },
                          min: 5,
                          max: 100,
                        ),
                      ),
                      ImageIcon(
                        AssetImage("assets/icons/speed_high.png"),
                        size: 22,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
