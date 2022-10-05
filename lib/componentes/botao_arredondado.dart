import 'package:flutter/material.dart';

class BotaoArredondado extends StatelessWidget {
  const BotaoArredondado(
      {super.key, required this.icone, required this.mudaBotaoArredondado});

  final IconData? icone;
  final VoidCallback mudaBotaoArredondado;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF7E7E7E),
      onPressed: mudaBotaoArredondado,
      child: Icon(icone),
    );
  }
}
