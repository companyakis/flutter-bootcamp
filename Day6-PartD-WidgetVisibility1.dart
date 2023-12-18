//ourapp.dart file
//main.dart is different

//widget visibility

import 'package:flutter/material.dart';

class OurApp extends StatefulWidget {
  const OurApp({super.key});

  @override
  State<OurApp> createState() => _OurAppState();
}

class _OurAppState extends State<OurApp> {
  
  //widget show or hide
  bool widgetController = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget Visibility")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Visibility(visible: widgetController, child: Text("Hi 1")),
            Text("Hi 2"),
            Text("Hi 3"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    widgetController = true;
                  });
                },
                child: const Text("Show me!")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    widgetController = false;
                  });
                },
                child: const Text("Hide me!")),
          ],
        ),
      ),
    );
  }
}
