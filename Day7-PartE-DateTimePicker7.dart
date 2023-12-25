//widgets.dart file

//main.dart file is different

import 'package:flutter/material.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  var tfTime = TextEditingController();
  var tfDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Date Picker & Time Picker")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 100,
                  child: TextField(
                    controller: tfTime,
                    decoration: const InputDecoration(hintText: "Time"),
                  )),
              IconButton(
                  onPressed: () {
                    showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.fromDateTime(DateTime.now()))
                        .then((value) {
                      tfTime.text = "${value!.hour}: ${value.minute}";
                    });
                  },
                  icon: const Icon(Icons.access_time)),
              SizedBox(
                  width: 100,
                  child: TextField(
                    controller: tfDate,
                    decoration: const InputDecoration(hintText: "Date"),
                  )),
              IconButton(
                  onPressed: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2018),
                            lastDate: DateTime(2024))
                        .then((value) {
                      tfDate.text =
                          "${value!.day} / ${value.month} / ${value.year}";
                    });
                  },
                  icon: const Icon(Icons.date_range)),
            ],
          ),
        ],
      ),
    );
  }
}
