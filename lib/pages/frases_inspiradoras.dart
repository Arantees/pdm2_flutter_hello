import 'package:flutter/material.dart';
import '../pages/widgets/banner_widget.dart';

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
            BannerWidget(
              texto:
                  'O egoísmo causa a ignorância, a cólera e o descontrole, que são a origem dos problemas do mundo.',
              autor: 'Dalai Lama',
              cor: Colors.amber,
            ),
            BannerWidget(
              texto:
                  'Julgue seu sucesso pelas coisas que você teve que renunciar para conseguir.',
              autor: 'Dalai Lama',
              cor: Colors.blue,
            ),
            BannerWidget(
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
