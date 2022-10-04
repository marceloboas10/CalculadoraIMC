import 'package:flutter/material.dart';
import 'constantes.dart';

class BotaoInferior extends StatelessWidget {
  const BotaoInferior(
      {super.key, required this.aoPressionar, required this.tituloBotao});

  final String tituloBotao;
  final Function() aoPressionar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        color: kContainerCalcular,
        height: kTamanhoContainerCalcular,
        width: double.infinity,
        child: Center(
          child: Text(
            tituloBotao,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
