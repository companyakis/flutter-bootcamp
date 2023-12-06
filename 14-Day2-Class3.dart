//create class methods

//country.dart file

class Country {
  String name; //late String
  int population; //late int
  bool isRepublic; //late bool

  //constructor
  Country(
      {required this.name, required this.population, required this.isRepublic});

  void countryInfo() {
    print("Country name: $name");
    print("Country population: $population");
    print("Is country a republic: $isRepublic");
  }
}
