//widgets.dart file

//main.dart file is different

import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  int radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Radio Button")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Select your language for smart contract dev!",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 195,
                child: RadioListTile(
                    title: const Text("Solidity"),
                    value: 1,
                    groupValue: radioValue,
                    onChanged: (data) {
                      setState(() {
                        radioValue = data!;
                      });
                    }),
              ),
              SizedBox(
                width: 195,
                child: RadioListTile(
                    title: const Text("TypeScript"),
                    value: 2,
                    groupValue: radioValue,
                    onChanged: (data) {
                      setState(() {
                        radioValue = data!;
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
