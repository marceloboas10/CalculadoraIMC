import 'package:flutter/material.dart';

class ConteudoIcone extends StatelessWidget {
  const ConteudoIcone(
      {super.key, required this.icone, required this.descricao});

  final IconData icone;
  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icone,
          size: 95,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          descricao,
          style: const TextStyle(fontSize: 24, color: Colors.black),
        ),
      ],
    );
  }
}
