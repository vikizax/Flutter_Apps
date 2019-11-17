import 'package:flutter/material.dart';
// for playing local audio
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
    player.clearCache();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildExpanded(noteNumber: 1, color: Colors.red),
              buildExpanded(noteNumber: 2, color: Colors.orange),
              buildExpanded(noteNumber: 3, color: Colors.yellow),
              buildExpanded(noteNumber: 4, color: Colors.green),
              buildExpanded(noteNumber: 5, color: Colors.teal),
              buildExpanded(noteNumber: 6, color: Colors.blue),
              buildExpanded(noteNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

// function to build expanded widget with flatbutton
  Expanded buildExpanded({int noteNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () => playSound(noteNumber),
        color: color,
        child: Text(''),
      ),
    );
  }
}
