import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/counter_page.dart';
import 'package:hello_flutter/pages/frases_inspiradoras.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.maxFinite),
            FilledButton(
              onPressed: () {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FrasesInspiradoras(),
                  ),
                );
              },
              child: Text('Frases'),
            ),
          ],
        ),
      ),
    );
  }
}
