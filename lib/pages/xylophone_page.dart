import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'widgets/xylophone_button.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  final player = AudioPlayer();

  void playAudio(int id) async {
    await player.setAsset('assets/audio/note$id.wav');
    await player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Xylophone'),
      ),
      body: Column(
        children: [
          XylophoneButton(cor: Colors.red, assetId: 1, callBack: playAudio),
          XylophoneButton(cor: Colors.orange, assetId: 2, callBack: playAudio),
          XylophoneButton(cor: Colors.yellow, assetId: 3, callBack: playAudio),
          XylophoneButton(cor: Colors.green, assetId: 4, callBack: playAudio),
          XylophoneButton(cor: Colors.blueAccent, assetId: 5, callBack: playAudio),
          XylophoneButton(cor: Colors.indigo, assetId: 6, callBack: playAudio),
          XylophoneButton(cor: Colors.purple, assetId: 7, callBack: playAudio),
        ],
      ),
    );
  }
}


class MinhaTela extends StatelessWidget {
  const MinhaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Tela'),
      ),
      body: Center(
        child: Text('Conteúdo da Minha Tela'),
      ),
    );
  }
}
