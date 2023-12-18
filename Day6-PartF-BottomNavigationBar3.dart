//bottom_navigation.dart file

import 'package:daysix/page_one.dart';
import 'package:daysix/page_three.dart';
import 'package:daysix/page_two.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});
  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  var pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation Bar Project")),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_one_outlined), label: "One"),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_two_outlined), label: "Two"),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_3_outlined), label: "Three"),
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
