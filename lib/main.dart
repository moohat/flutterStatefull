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
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                isDismissible: false,
                builder: (context) => Container(
                  height: 300,
                  color: Colors.white,
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () => print("Klik Photo"),
                        leading: Icon(Icons.photo),
                        title: Text("Photo"),
                      ),
                      ListTile(
                        leading: Icon(Icons.music_note_rounded),
                        title: Text("Music"),
                      ),
                      ListTile(
                        leading: Icon(Icons.video_collection),
                        title: Text("Video"),
                      ),
                      ListTile(
                        leading: Icon(Icons.share),
                        title: Text("share"),
                      ),
                      ListTile(
                        onTap: () => Navigator.pop(context),
                        leading: Icon(Icons.cancel),
                        title: Text("CANCEL"),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Text("SHow Bottom Sheet"),
          ),
        ),
      ),
    );
  }
}
