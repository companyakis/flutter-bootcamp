//user_interaction.dart file

//main.dart file is different!

import 'package:flutter/material.dart';

class UserInteraction extends StatefulWidget {
  const UserInteraction({super.key});

  @override
  State<UserInteraction> createState() => _UserInteractionState();
}

class _UserInteractionState extends State<UserInteraction> {
  var controller = TextEditingController();

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
                        title: const Text("Register"),
                        content: TextField(
                          controller: controller,
                          decoration:
                              const InputDecoration(hintText: "Required info"),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                controller.text = "";
                              },
                              child: const Text("Ok")),
                        ],
                      );
                    });
              },
              child: const Text("Alert private"),
            ),
          ],
        ),
      ),
    );
  }
}
