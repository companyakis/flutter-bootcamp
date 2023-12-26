//registerpage.dart file

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var tfPersonName = TextEditingController();
  var tfPersonMobile = TextEditingController();

  Future<void> register(String person_name, String person_mobile) async {
    print("Register person: $tfPersonName - $tfPersonMobile");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register Page")),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: tfPersonName,
              decoration: const InputDecoration(hintText: "Person name"),
            ),
            TextField(
              controller: tfPersonMobile,
              decoration: const InputDecoration(hintText: "Mobile phone"),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("SIGN UP")),
          ],
        ),
      )),
    );
  }
}
