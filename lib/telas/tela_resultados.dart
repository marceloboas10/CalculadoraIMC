import '../componentes/cartao_padrao.dart';
import 'package:calculadora_imc/constantes.dart';
import 'package:flutter/material.dart';

class TelaResultado extends StatelessWidget {
  const TelaResultado(
      {super.key,
      required this.textoIMC,
      required this.textoResultado,
      required this.textoAvaliacao});

  final String textoIMC;
  final String textoResultado;
  final String textoAvaliacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Resultado',
                style: kTituloTexStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadrao(
              cor: kCorContainer,
              filhoContainer: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textoResultado,
                    style: const TextStyle(
                        color: Color(0xFF24d876),
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    textoIMC,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    textoAvaliacao,
                    textAlign: TextAlign.center,
                    style: kDescricaoTextStyle,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kContainerCalcular,
              height: kTamanhoContainerCalcular,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Refazer Teste',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
