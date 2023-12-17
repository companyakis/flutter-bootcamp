//ourworks.dart file

//main.dart file is different

import 'package:flutter/material.dart';

class Ourworks extends StatefulWidget {
  const Ourworks({super.key});

  @override
  State<Ourworks> createState() => _Ourworks();
}

class _Ourworks extends State<Ourworks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Counter++"),
            ),
            Text("Counter value"),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Counter--"),
            ),
          ],
        ),
      ),
    );
  }
}

//------------------------------------!!!!!!------------------------------

import 'package:flutter/material.dart';
import 'package:working_structure/ourworks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Ourworks(),
    );
  }
}
