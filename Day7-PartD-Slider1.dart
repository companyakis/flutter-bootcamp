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
  double sliderGo = 22.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slider")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Slider int value: ${sliderGo.toInt().toString()}"),
          const SizedBox(
            height: 30,
          ),
          Text("Slider double value: ${sliderGo.toString()}"),
          Slider(
            max: 100.0,
            min: 0.0,
            value: sliderGo,
            onChanged: (data) {
              setState(() {
                sliderGo = data;
              });
            },
          )
        ],
      ),
    );
  }
}
