import 'package:flutter/material.dart';
import 'product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Home"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductPage(),
                ));
              },
              child: Text("Next Page >>>"))),
    );
  }
}