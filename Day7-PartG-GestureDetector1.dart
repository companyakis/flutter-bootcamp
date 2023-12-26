//widgets.dart file

//main.dart file is different

import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Gesture Detector")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: GestureDetector(
            onTap: () {
              print("One click");
            },
            onDoubleTap: () {
              print("Double click");
            },
            onLongPress: () {
              print("Long press");
            },
            child: Container(
              width: 150,
              height: 150,
              color: Colors.blueAccent,
              child: const Center(child: Text("You can click!")),
            ),
          ))
        ],
      ),
    );
  }
}
