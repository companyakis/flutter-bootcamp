//ourapp.dart file
//main.dart is different!

import 'package:flutter/material.dart';
import 'package:sixthday/game_screen.dart';

class Ourapp extends StatefulWidget {
  const Ourapp({super.key});

  @override
  State<Ourapp> createState() => _OurappState();
}

class _OurappState extends State<Ourapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is main page"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GameScreen()));
              },
              child: const Text("Game Screen"),
            ),
          ],
        ),
      ),
    );
  }
}

//--------------------------------------------!!!--------------------------------------------

//main.dart file

import 'package:flutter/material.dart';
import 'package:sixthday/ourapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Ourapp(),
    );
  }
}
