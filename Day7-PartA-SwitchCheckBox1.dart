//widgets.dart file

//main.dart file is different

import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  bool switchControl = false;
  bool checkBoxControl = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Switch and CheckBox")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 195,
                child: SwitchListTile(
                    title: const Text("Dart Lang"),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: switchControl,
                    onChanged: (data) {
                      setState(() {
                        switchControl = data;
                      });
                    }),
              ),
              SizedBox(
                width: 195,
                child: CheckboxListTile(
                    title: const Text("Flutter"),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checkBoxControl,
                    onChanged: (data) {
                      setState(() {
                        checkBoxControl = data!;
                      });
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
