//user_interaction.dart file

//main.dart file is different!

import 'package:flutter/material.dart';

class UserInteraction extends StatefulWidget {
  const UserInteraction({super.key});

  @override
  State<UserInteraction> createState() => _UserInteractionState();
}

class _UserInteractionState extends State<UserInteraction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Alert Example"),
                        content: const Text("Ceteris paribus ceteria cities!"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                          TextButton(
                              onPressed: () {}, child: const Text("Ok?")),
                        ],
                      );
                    });
              },
              child: const Text("Alert"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Alert private"),
            ),
          ],
        ),
      ),
    );
  }
}
