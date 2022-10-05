import './telas/tela_principal.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF616161),
        scaffoldBackgroundColor: const Color(0xFF616161),
      ),
      home: const TelaCalculadora(),
    );
  }
}
