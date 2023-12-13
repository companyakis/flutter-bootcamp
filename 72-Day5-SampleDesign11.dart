//myworks.dart file

//main.dart is different

import 'package:design_steps/colors.dart';
import 'package:flutter/material.dart';

class MyWorks extends StatefulWidget {
  const MyWorks({super.key});

  @override
  State<MyWorks> createState() => _MyWorksState();
}

class _MyWorksState extends State<MyWorks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style: TextStyle(
            color: fontColor1, //from colors.dart file
            fontFamily: "Pacifico",
            fontSize: 20,
          ),
        ),
        backgroundColor: mainColor, //from colors.dart file
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
            ),
            child: Text(
              "Beef Cheese",
              style: TextStyle(
                fontSize: 30,
                color: mainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Image.asset("pictures/pizza_resim.png"),
          ),
        ],
      ),
    );
  }
}
