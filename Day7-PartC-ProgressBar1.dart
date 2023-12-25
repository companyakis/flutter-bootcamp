//widgets.dart file

//main.dart file is different

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  bool progressControl = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Progress Bar")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      progressControl = true;
                    });
                  },
                  child: const Text("Start")),
              Visibility(
                  visible: progressControl,
                  child: const CircularProgressIndicator()),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      progressControl = false;
                    });
                  },
                  child: const Text("Stop")),
            ],
          ),
        ],
      ),
    );
  }
}
