import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Color> myColor = [
    Color.fromARGB(255, 255, 7, 181),
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.brown,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan List View"),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              height: 10,
            );
          },
          itemCount: myColor.length,
          itemBuilder: (context, index) {
            return Container(
              width: 300,
              height: 300,
              color: myColor[index],
            );
          },
        ),
      ),
    );
  }
}
