//widgets.dart file

//main.dart file is different

import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  var controller = TextEditingController();
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets")),
      body: Center(
          child: Column(
        children: [
          Text("User e-mail: $data"),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(hintText: "User e-mail"),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  data = controller.text;
                });
                controller.text = "";
              },
              child: const Text("Ok")),
        ],
      )),
    );
  }
}
