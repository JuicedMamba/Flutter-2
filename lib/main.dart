import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key}) : super(key: key);

  List<ListItem> list = [
    ListItem(
      "Dr. Jordan Peterson",
      "PHD",
      Image.asset(
        'assets/jordan.jpg',
        height: 200,
        width: 200,
      ),
    ),
    ListItem(
      "Dr. House",
      'MD',
      Image.asset('assets/dr-house.jpg', height: 200, width: 200),
    ),
    ListItem(
        'Dr. Who',
        'TT',
        Image.asset(
          'assets/images.jpg',
          height: 200,
          width: 200,
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Doctors'),
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 20,
              child: Container(
                height: 200,
                child: ListTile(
                  leading: list[index].image,
                  onTap: () {},
                  title: Column(
                    children: [
                      Text(list[index].name),
                      Text(list[index].designation),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ListItem {
  String name;
  String designation;
  Widget image;

  ListItem(this.name, this.designation, this.image);
}
