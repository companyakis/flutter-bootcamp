//game_screen.dart file

import 'package:flutter/material.dart';
import 'package:sixthday/people.dart';
import 'package:sixthday/result_screen.dart';

class GameScreen extends StatefulWidget {
  People person;
  GameScreen({required this.person});
  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "${widget.person.name} - ${widget.person.age} - ${widget.person.married}"),
            const Text("This is game page"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResultScreen()));
              },
              child: const Text("Result Page"),
            ),
          ],
        ),
      ),
    );
  
  }
}
