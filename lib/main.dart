import 'package:flutter/material.dart';
import 'package:flutter_basic_4/main_screen.dart';
import 'package:flutter_basic_4/pages/my_custom_scroll_behavior.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // agar bisa scroll horizontal di web,
      scrollBehavior: MyCustomScrollBehavior(),

      title: 'Wisata Bandung. Size: ${MediaQuery.of(context).size.width}',
      theme: ThemeData(
        fontFamily: 'Oswald',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("First Screen"),
      //   ),
      //   body: Column(
      //     children: [
      //       TextButton(onPressed: () {}, child: const Text('Text Button')),
      //       ElevatedButton(onPressed: () {}, child: const Text('Gaskeun')),
      //       OutlinedButton(
      //           onPressed: () {
      //             print('outlined button dipencet');
      //           },
      //           child: const Text('Outlined Button')),
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(Icons.volume_up),
      //         tooltip: 'Increase volume by 10',
      //       )
      //     ],
      //   ),
      // ),
      // home: const DetailScreen(),
      // home: const FirstScreen(),
      // home: const ScrollingScreen(),
      // home: const Rainbow(),
      // home: const ExpandedFlexiblePage(),
      // home: FirstScreen(),
      // home: HomePage(),
      home: MainScreen(),
    );
  }
}
