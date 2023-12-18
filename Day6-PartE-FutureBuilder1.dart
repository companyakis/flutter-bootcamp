//ourapp.dart file
//main.dart is different

import 'package:flutter/material.dart';

class OurApp extends StatefulWidget {
  const OurApp({super.key});

  @override
  State<OurApp> createState() => _OurAppState();
}

class _OurAppState extends State<OurApp> {
  Future<int> sum(int x, int y) async {
    int result = x + y;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Future Builder")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Wait..."),
            FutureBuilder<int>(
                future: sum(45, 132),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text("Not working...");
                  }
                  if (snapshot.hasData) {
                    return Text("x + y = ${snapshot.data}");
                  } else {
                    return const Text("No result");
                  }
                }),
          ],
        ),
      ),
    );
  }
}
