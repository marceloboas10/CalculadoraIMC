import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

const corContainer = Color(0xFF9E9E9E);

class TelaCalculadora extends StatefulWidget {
  const TelaCalculadora({super.key});

  @override
  State<TelaCalculadora> createState() => _TelaCalculadoraState();
}

class _TelaCalculadoraState extends State<TelaCalculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CartaoPadrao(
                  cor: corContainer,
                )),
                Expanded(
                    child: CartaoPadrao(
                  cor: corContainer,
                )),
              ],
            ),
          ),
          Expanded(
              child: CartaoPadrao(
            cor: corContainer,
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    cor: corContainer,
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor: corContainer,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartaoPadrao extends StatelessWidget {
  CartaoPadrao({super.key, required this.cor});
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: cor,
      ),
    );
  }
}
