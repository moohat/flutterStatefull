import 'package:flutter/material.dart';
import 'package:flutter_basic_4/DetailScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const DetailScreen(),
    );
  }
}
