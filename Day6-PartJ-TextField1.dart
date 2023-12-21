//widgets.dart file

//main.dart file is different

import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  var controller = TextEditingController();
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets")),
      body: Center(
          child: Column(
        children: [
          Text("User e-mail: $data"),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(hintText: "User e-mail"),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  data = controller.text;
                });
              },
              child: const Text("Ok")),
        ],
      )),
    );
  }
}

//--------------------------main.dart file is below-------------------------------------------------

import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Widgets(),
    );
  }
}
