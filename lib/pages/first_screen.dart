import 'package:flutter/material.dart';
import 'package:flutter_basic_4/pages/second_screen.dart';

class FirstScreen extends StatelessWidget {
  // const FirstScreen({Key? key}) : super(key: key);
  final String message = "hello from first screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Pindah Screen'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(message)));
              },
            ),
          ),
          Center(
            child: Text('ini data yang akan dikirim: "$message"'),
          ),
        ],
      ),
    );
  }
}
