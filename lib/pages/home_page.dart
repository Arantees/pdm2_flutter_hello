import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/counter_page.dart';
import 'package:hello_flutter/pages/frases_inspiradoras.dart';
import 'package:hello_flutter/pages/photo_book_page.dart';
import 'package:hello_flutter/pages/xylophone_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Representação de uma tela Material Design contendo(appBar, body,
    // floatingActionButton, bottonavigationBar, drawers, bottomSheets, etc)
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          // Propriedade de alinhamento de eixo principal (vertical)
          mainAxisAlignment: MainAxisAlignment.center,
          // Propriedade de alinhamento de eixo cruzado (horizontal)
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Widget que literalmente é uma caixa com dimensões configuráveis
            SizedBox(width: double.maxFinite),
            FilledButton(
              onPressed: () {
                // Navegação entre telas utilizando empilhamento de telas.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CounterPage(),
                  ),
                );
              },
              child: Text('Counter'),
            ),
            FilledButton(
              onPressed: () {
                // Navegação entre telas utilizando empilhamento de telas.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FrasesInspiradoras(),
                  ),
                );
              },
              child: Text('Frases'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MinhaTela(),
                  ),
                );
              },
              child: Text('Minha Tela'),
            ),
                        FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhotoBookPage(),
                  ),
                );
              },
              child: Text('PhoBook'),
            ),
          ],
        ),
      ),
    );
  }
}
