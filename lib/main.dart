import 'package:flutter/material.dart';
import 'package:hello_flutter/pages/home_page.dart';

// Trigger para inicializacao do aplicativo
void main() {
  // Aqui realizamos inicializações de dependencias de terceiros também
  runApp(App());
}
// Classe/Widget que representa o Aplicativo
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //Widget que configura o Desisgn System Material Design com todos os componentes Google Material 3.
    return MaterialApp(
      // Widget que representa um Tema Material, contento cores nos temas claro e escuro já configuradas.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
      ),
      // Página Inicial do aplicativo
      home: HomePage(),
    );
  }
}
