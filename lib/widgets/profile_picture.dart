import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.red, Colors.amber]),
            borderRadius: BorderRadius.circular(60),
            // color: Colors.amber
          ),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/536/222"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(60),
              color: Colors.blue,
              border: Border.all(color: Colors.white, width: 5)),
        ),
      ],
    );
  }
}
