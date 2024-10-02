import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio('note$soundNumber.wav'));
  }

  Expanded buildkey({Color? backgroundColor, int? soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber!);
        },
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        child: Text('click me'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(backgroundColor: Colors.teal, soundNumber: 1),
              buildkey(backgroundColor: Colors.red, soundNumber: 1),
              buildkey(backgroundColor: Colors.yellow, soundNumber: 1),
              buildkey(backgroundColor: Colors.blueAccent, soundNumber: 1),
              buildkey(backgroundColor: Colors.purple, soundNumber: 1),
              buildkey(backgroundColor: Colors.pink, soundNumber: 1),
              buildkey(backgroundColor: Colors.lime, soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}
