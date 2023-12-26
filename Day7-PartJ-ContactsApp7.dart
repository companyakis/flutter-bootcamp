//detailpage.dart file

import 'package:contacts/data/entity/people.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  People person;
  DetailsPage({required this.person});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var tfPersonName = TextEditingController();
  var tfPersonMobile = TextEditingController();

  Future<void> update(
      int person_id, String person_name, String persone_phone) async {
    print("Update person: $person_id - $person_name, $persone_phone");
  }

  @override
  void initState() {
    super.initState();
    var person = widget.person;
    tfPersonName.text = person.personName;
    tfPersonMobile.text = person.personMobile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details Page")),
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
            ElevatedButton(
                onPressed: () {
                  update(widget.person.personID, tfPersonName.text,
                      tfPersonMobile.text);
                },
                child: const Text("UPDATE")),
          ],
        ),
      )),
    );
  }
}
