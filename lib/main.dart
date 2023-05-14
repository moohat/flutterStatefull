import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
        title: Text("Drawer"),
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 150,
            color: Colors.blue,
            child: Text(
              "Dashboard Menu",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),

          //agar bisa scroll ke bawah, list view dibungkus expanded bukan container
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  onTap: () {
                    print("ke Halaman Home");
                  },
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("ke Halaman Product");
                  },
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Product"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("ke Halaman setting");
                  },
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                ListTile(
                  onTap: () {
                    print("Ubah Profile");
                  },
                  leading: Icon(Icons.person),
                  title: Text("Ubah Profile"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
