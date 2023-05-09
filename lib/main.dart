import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //hilangkan banner debug
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List data = [
    {
    "judul": "pilihan ke - 1",
    "data":1,
    },
    {
    "judul": "pilihan ke - 2",
    "data":2,

    },
    {
    "judul": "pilihan ke - 3",
    "data":3,

    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: DropdownButton(
          items: data
              .map((e) => DropdownMenuItem(
                    child: Text("tampilan - $e"),
                    value: e.toString(),
                  ))
              .toList(),
          onChanged: (value) {
            print(value);
          },
        ),
      )),
    );
  }
}
