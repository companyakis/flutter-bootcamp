//mainpage.dart

//main.dart is different

import 'package:contacts/data/entity/people.dart';
import 'package:contacts/ui/views/detailpage.dart';
import 'package:contacts/ui/views/registerpage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //appbar variable and func
  bool anySearch = false;
  Future<void> search(String searchPerson) async {
    print("Search person: $searchPerson");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: anySearch
            ? TextField(
                decoration: const InputDecoration(hintText: "Search"),
                onChanged: (searchResult) {
                  search(searchResult);
                },
              )
            : const Text("Contacts Page"),
        actions: [
          anySearch
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      anySearch = false;
                    });
                  },
                  icon: const Icon(Icons.clear))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      anySearch = true;
                    });
                  },
                  icon: const Icon(Icons.search)),
        ],
      ),
      body: ElevatedButton(
        child: const Text("Details"),
        onPressed: () {
          var person = People(
              personID: 1, personName: "Mustafa", personMobile: "123456");
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(person: person)))
              .then((value) => print("Returned main page"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()))
              .then((value) => print("Returned main page"));
        },
        child: const Icon(Icons.add_card),
      ),
    );
  }
}
