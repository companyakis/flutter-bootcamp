//widgets.dart file

//main.dart file is different

import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  var langList = <String>[];
  String selectedLang = "Python";

  //data read
  @override
  void initState() {
    super.initState();
    langList.add("Python");
    langList.add("TypeScript");
    langList.add("Dart");
    langList.add("Mojo");
    langList.add("Move");
    langList.add("Solidity");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DropDown Menu")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton(
                value: selectedLang,
                icon: const Icon(Icons.arrow_drop_down_circle),
                items: langList.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (data) {
                  setState(() {
                    selectedLang = data!;
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
