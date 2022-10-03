// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SelectVehicleFront extends StatefulWidget {
  const SelectVehicleFront({Key? key}) : super(key: key);

  @override
  State<SelectVehicleFront> createState() => _SelectVehicleFrontState();
}

class _SelectVehicleFrontState extends State<SelectVehicleFront> {
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
                  child: Container(
                    height: height * 0.28,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/car_front.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 1.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: height * 0.28,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/sedan_front.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 1.0,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: height * 0.28,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/jeep_front.png"),
                            fit: BoxFit.contain)),
                  ),
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 0.8,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: height * 0.28,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/suv_front.png",
                            ),
                            fit: BoxFit.contain)),
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
