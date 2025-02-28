import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Xylophone'),
      ),
      body: Column(
        children: [
          OutlinedButton(
            onPressed: () async {
              var player = AudioPlayer();
              await player.setAsset('assets/audio/note1.wav');
              await player.play();
            },
            child: Text('Testar Nota 1'),
          ),
        ],
      ),
    );
  }
}
