import 'package:flutter/material.dart';

class FrasesInspiradoras extends StatelessWidget {
  const FrasesInspiradoras({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Banner(
              texto:
                  'O egoísmo causa a ignorância, a cólera e o descontrole, que são a origem dos problemas do mundo.',
              autor: 'Dalai Lama',
              cor: Colors.amber,
            ),
            Banner(
              texto:
                  'Julgue seu sucesso pelas coisas que você teve que renunciar para conseguir.',
              autor: 'Dalai Lama',
              cor: Colors.blue,
            ),
            Banner(
              texto: 'Seja a mudança que você quer ver no mundo.',
              autor: 'Dalai Lama',
              cor: Colors.green,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('VOLTAR'),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget customizado
class Banner extends StatelessWidget {
  const Banner({
    super.key,
    required this.texto,
    required this.cor,
    required this.autor,
  });

  // Parametros componentizáveis
  final String texto;
  final String autor;
  final MaterialColor cor;

  @override
  Widget build(BuildContext context) {
    return Center(
      // Customização de Container
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: cor.shade100,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: cor.shade200,
            width: 2,
          ),
        ),
        child: Column(
          children: [
            Text(
              texto,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: cor.shade700,
              ),
            ),
            //Widget para utilização de alinhamento independente do alinhamento da coluna
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                autor,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: cor.shade900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
