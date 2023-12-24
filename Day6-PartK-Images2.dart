//widgets.dart file

//main.dart file is different

import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  String picName = "satisfied.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      picName = "satisfied.png";
                    });
                  },
                  child: const Text("Happy")),
              Image.asset("images/$picName"),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      picName = "sad.png";
                    });
                  },
                  child: const Text("Sad")),
            ],
          )
        ],
      )),
    );
  }
}
