import 'package:flutter/material.dart';
import '../widgets/profile_picture.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        //elevation untuk menghilangkan bayangan di bawah title
        //0 = false
        elevation: 0,
        title: Row(
          children: [
            Text(
              "MOOHAT",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(
              Icons.keyboard_arrow_down_outlined,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [ProfilePicture()],
          )
        ],
      ),
    );
  }
}
