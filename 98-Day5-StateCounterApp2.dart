//ourworks.dart file

//main.dart file is different

import 'package:flutter/material.dart';

class Ourworks extends StatefulWidget {
  const Ourworks({super.key});

  @override
  State<Ourworks> createState() => _Ourworks();
}

class _Ourworks extends State<Ourworks> {
  //I added counter variable
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter App",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter += 1;
                });
              },
              child: const Text(
                "Counter++",
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Counter value: $counter",
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter -= 1;
                });
              },
              child: const Text(
                "Counter--",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
