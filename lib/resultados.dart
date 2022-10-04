import 'package:calculadora_imc/cartao_padrao.dart';
import 'package:calculadora_imc/constantes.dart';
import 'package:flutter/material.dart';

class TelaResultado extends StatelessWidget {
  const TelaResultado({super.key});

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
          const Expanded(
            child: Text(
              'Resultado',
              style: kTituloTexStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadrao(
              cor: kCorContainer,
              filhoContainer: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Norma',
                    style: TextStyle(
                        color: Color(0xFF24d876),
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '18.4',
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'bla bla bla',
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
                  'Recalcular',
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
