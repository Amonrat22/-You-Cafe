import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';

// ignore: unused_import
import 'Style.dart';
//ต้องมีการเชื่อมดาต้าโลเคชั่น
//เพื่อค้นหาคาเฟ่ที่อยู่ตัวผู้ใช้ในระยะไม่เกิน 1 กม.
//แสดงผลเป็น ListView

//สร้างหน้าเชื่อมบทความ

class Person {
  final String name, surname;
  final num age;

  Person(this.name, this.surname, this.age);
}

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'search_page',
      theme: ThemeData(
        backgroundColor: Colors.orangeAccent,
        canvasColor: Colors.white,
        fontFamily: 'mont',
      ),
      home: MyHomePage_(),
    );
  }
}

class MyHomePage_ extends StatelessWidget {
  static List<Person> people = [
    Person('ร้านกาแฟสด 989/1 coffee พะเยา', 'พะเยา', 10.2),
    Person('Magic Mountain Cafe’', 'พะเยา', 9.6),
    Person('บ้านอิงกว๊าน Bar & Cafe’', 'พะะเยา', 11),
    Person('โฮมเวิร์ค คาเฟ่ (HomeWork Cafe)', 'พะเยา', 7.4),
    Person('Add More Cafe’', 'พะเยา', 1.2),
    Person('The Garden', 'พะเยา', 0.5),
    Person('The Lake Cafe Phayao', 'พะเยา', 1.7),
    Person('ร้านต้นมะเฟือง', 'พะเยา', 3.5),
    Person('Thammada', 'พะเยา', 14),
    Person('MO-I cake studio', 'พะเยา', 6.9),
    Person('ชาริน คาเฟ่ (Charin Coffee)', 'พะเยา', 4),
    Person('Mr. Handsome', 'แพร่', 13.2)
  ];

  get primarySwatch => null;

  @override
  // ignore: override_on_non_overriding_member
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      backgroundColor: Colors.greenAccent,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("seach"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          final Person person = people[index];
          return ListTile(
            title: Text(person.name),
            subtitle: Text(person.surname),
            trailing: Text('${person.age} กม.'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Search cafe',
        backgroundColor: cream,
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage<Person>(
            onQueryUpdate: (s) => print(s),
            items: people,
            barTheme: ThemeData(
              backgroundColor: Colors.orangeAccent,
            ),
            searchLabel: 'Search Cafe',
            suggestion: Center(
              child: Text('ค้นหาร้านคาเฟ่'),
            ),
            failure: Center(
              child: Text('No cafe found :('),
            ),
            filter: (person) => [
              person.name,
              person.surname,
              person.age.toString(),
            ],
            builder: (person) => ListTile(
              title: Text(person.name),
              subtitle: Text(person.surname),
              trailing: Text('${person.age} กม.'),
            ),
          ),
        ),
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    );
  }
}

color(MaterialColor lightGreen) {}
