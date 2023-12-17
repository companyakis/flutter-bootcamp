//custom widgets

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
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppTextButton(buttonContent: "Cheese"),
                AppTextButton(buttonContent: "Sausage"),
                AppTextButton(buttonContent: "Olive"),
                AppTextButton(buttonContent: "Pepper"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  "30 min",
                  style: TextStyle(
                      fontSize: 20,
                      color: fontColor2,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "Delivery",
                    style: TextStyle(
                        fontSize: 20,
                        color: mainColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Meet lover, you'll be happy! Be sure this pizza is awesome!",
                  style: TextStyle(fontSize: 18, color: fontColor2),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "\$ 3.99",
                  style: TextStyle(
                      fontSize: 40,
                      color: mainColor,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                SizedBox(
                  width: 203,
                  height: 49,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Add to Chart",
                      style: TextStyle(
                        color: fontColor1,
                        fontSize: 20,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppTextButton extends StatelessWidget {
  String buttonContent;
  AppTextButton({required this.buttonContent});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        buttonContent,
        style: TextStyle(color: fontColor1),
      ),
      style: TextButton.styleFrom(backgroundColor: mainColor),
    );
  }
}
