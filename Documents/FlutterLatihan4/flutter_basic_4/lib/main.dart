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
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Delete Produk berhasil",
                  style: TextStyle(color: Colors.black),
                ),
                action: SnackBarAction(
                    label: "CANCEL",
                    onPressed: () {
                      print("Tidak jadi delete produk");
                    }),
                backgroundColor: Colors.amber,
                duration: Duration(seconds: 5),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              ));
            },
            child: Text("Show Snack Bar")),
      ),
    );
  }
}
