import 'package:flutter/material.dart';

class CartaoPadrao extends StatelessWidget {
  const CartaoPadrao({super.key, required this.cor, this.filhoContainer, this.selecionaCartao});

  final Color cor;
  final Widget? filhoContainer;
  final VoidCallback? selecionaCartao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selecionaCartao,
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cor,
        ),
        child: filhoContainer,
      ),
    );
  }
}
