import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              XylophoneKey(soundNumber: 1, color: Colors.red),
              XylophoneKey(soundNumber: 2, color: Colors.orange),
              XylophoneKey(soundNumber: 3, color: Colors.yellow),
              XylophoneKey(soundNumber: 4, color: Colors.green),
              XylophoneKey(soundNumber: 5, color: Colors.teal),
              XylophoneKey(soundNumber: 6, color: Colors.blue),
              XylophoneKey(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneKey extends StatelessWidget {
  final int soundNumber;
  final Color color;
  final AudioPlayer _player = AudioPlayer();

  XylophoneKey({
    Key? key,
    required this.soundNumber,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: null,
      style: ElevatedButton.styleFrom(backgroundColor: color),
      onPressed: () => _playSound(soundNumber),
    );
  }

  void _playSound(int soundNumber) =>
      _player.play(AssetSource('audios/note$soundNumber.wav'));
}
