import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    super.key,
  });

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int contador = 0;

  void increment() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Voce pressionou o botão algumas vezes'),
            Text(
              contador.toString(),
              style: TextStyle(fontSize: 48),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
