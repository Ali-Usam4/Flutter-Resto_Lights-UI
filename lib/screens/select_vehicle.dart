// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SelectVehicle extends StatefulWidget {
  const SelectVehicle({Key? key}) : super(key: key);

  @override
  State<SelectVehicle> createState() => _SelectVehicleState();
}

class _SelectVehicleState extends State<SelectVehicle> {
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
              icon: Icon(Icons.camera_alt),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Select Vehicle Type",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              color: Colors.blue,
              thickness: 0.8,
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.22,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/car.png"),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        "Car",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 0.8,
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.22,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/truck.png"),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        "Truck",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 0.8,
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.22,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("assets/images/suv.png"),
                        )),
                      ),
                      Text(
                        "SUV",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 0.8,
                ),
                InkWell(
                  onTap: () {
                    /* Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectVehicle(),
                      ),
                    ); */
                  },
                  child: SizedBox(
                    height: height * 0.22,
                    width: width * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/add.png"),
                          size: 40,
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
