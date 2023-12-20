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
        title: const Text("SnackBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("Dou you want to delete?"),
                    action: SnackBarAction(
                      label: "Yes",
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text("Snackbar"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      "Do you want to delete?",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    backgroundColor: Colors.greenAccent,
                    action: SnackBarAction(
                      label: "Yes",
                      textColor: Colors.purple,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text(
                              "Deleted!",
                              style: TextStyle(color: Colors.orange),
                            ),
                            backgroundColor: Colors.black54,
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
              child: const Text("Snackbar private"),
            ),
            ElevatedButton(
              onPressed: () {},
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
