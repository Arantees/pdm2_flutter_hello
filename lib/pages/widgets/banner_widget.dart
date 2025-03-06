import 'package:flutter/material.dart';

// Widget customizado
class BannerWidget extends StatelessWidget {
  const BannerWidget({
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