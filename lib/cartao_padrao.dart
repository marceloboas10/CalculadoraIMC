import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  const CartaoPadrao({super.key, required this.cor, this.filhoContainer});

  final Color cor;
  final Widget? filhoContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cor,
      ),
      child: filhoContainer,
    );
  }
}
