import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.blue[400],
            appBar: AppBar(
              backgroundColor: Colors.blue[600],
              title: Text('ASK ME ANYTHING!'),
              centerTitle: true,
            ),
            body: MyApp(),
          ),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Image.asset('images/ball$imageNumber.png'),
          onPressed: () {
            getRandomImage();
          },
        )
      ],
    );
  }

  void getRandomImage() {
    return setState(() {
      imageNumber = new Random().nextInt(5) + 1;
    });
  }
}
