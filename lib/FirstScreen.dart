// import 'dart:html';

import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;
  String _name = '';
  TextEditingController _controller = TextEditingController();

  bool lightOn = false;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    var mySwitch = getSwitch();
    var myPadding = getTextField();
    var myRadio = getRadio();
    var myCheckBox = getCheckBox();
    var myImage = getImage();
    var myFont = getFont();
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                mySwitch,
                SizedBox(height: 15),
                myPadding,
                myRadio,
                myCheckBox,
                myImage,
                myFont
              ],
            ),
          ],
        )

        //

        // DropdownButton<String>(
        //   items: const <DropdownMenuItem<String>>[
        //     DropdownMenuItem<String>(
        //       value: 'Dart',
        //       child: Text('Dart'),
        //     ),
        //     DropdownMenuItem<String>(
        //       value: 'Kotlin',
        //       child: Text('Kotlin'),
        //     ),
        //     DropdownMenuItem<String>(
        //       value: 'Swift',
        //       child: Text('Swift'),
        //     ),
        //     DropdownMenuItem(
        //       value: 'Python',
        //       child: Text('Python'),
        //     ),
        //   ],
        //   value: language,
        //   hint: const Text('Select Language'),
        //   onChanged: (String? value) {
        //     setState(() {
        //       language = value;
        //     });
        //   },
        // ),
        );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  getSwitch() {
    return Switch(
      value: lightOn,
      onChanged: (bool value) {
        setState(() {
          lightOn = value;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(lightOn ? 'Light On' : 'Light Off'),
            duration: const Duration(seconds: 1),
          ),
        );
      },
    );
  }

  getTextField() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Write your name here...',
              labelText: 'Your Name',
            ),
            onChanged: (String value) {
              setState(() {
                _name = value;
              });
            },
          ),
          //untuk mengatur jarak gunakan sizebox
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Submit'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Hello, $_name'),
                    );
                  });
            },
          )
        ],
      ),
    );
  }

  getRadio() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Radio<String>(
            value: 'Dart',
            groupValue: language,
            onChanged: (String? value) {
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
          title: Text('Dart'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'Kotlin',
            groupValue: language,
            onChanged: (String? value) {
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
          title: Text('Kotlin'),
        ),
        ListTile(
          leading: Radio<String>(
            value: 'Swift',
            groupValue: language,
            onChanged: (String? value) {
              setState(() {
                language = value;
                showSnackbar();
              });
            },
          ),
          title: Text('Swift'),
        ),
      ],
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  getCheckBox() {
    return ListTile(
      leading: Checkbox(
        value: agree,
        onChanged: (bool? value) {
          setState(() {
            agree = value!;
          });
        },
      ),
      title: Text('Agree / Disagree'),
    );
  }

  //method getImage
  getImage() {
    return Column(
      children: [
        Center(
            child: Image.network(
          'https://picsum.photos/200/300',
          width: 600,
          height: 200,
        )),
        SizedBox(height: 10),
        Center(
          /**
           * 
          Load image dari asset local pertama kali menampilkan error, tidak mau loading
          kemudian dilakukan flutter clean
          akan banyak error tiba-tiba semua merah
          masuk file pubspec.yaml
          save file maka akan normal kembali
          atau bisa di terminal ketik flutter pub get
           */
          child: Image.asset(
            'images/thermo.png',
            width: 200,
            height: 200,
          ),
        )
      ],
    );
  }

  getFont() {
    return const Center(
      child: Text(
        'ini ditengah',
        style:
            TextStyle(fontFamily: 'Oswald', fontSize: 100, color: Colors.blue),
      ),
    );
  }
}
