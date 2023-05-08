import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Whatsapp"),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls")
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("CAMERA")),
          Center(child: Text("Chats")),
          Center(child: Text("Status")),
          Center(child: Text("Calls")),
        ]),
      ),
    );
  }
}
