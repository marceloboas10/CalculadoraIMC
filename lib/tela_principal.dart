import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cartao_padrao.dart';
import 'couteudo_icone.dart';

const corContainerInativo = Color(0xFF7E7E7E);
const corContainer = Color(0xFF9E9E9E);
const containerCalcular = Color(0xFFFF5823);
const tamanhoContainerCalcular = 80.0;

class TelaCalculadora extends StatefulWidget {
  const TelaCalculadora({super.key});

  @override
  State<TelaCalculadora> createState() => _TelaCalculadoraState();
}

class _TelaCalculadoraState extends State<TelaCalculadora> {
  Color corMasculinoPadrao = corContainerInativo;
  Color corFemininoPadrao = corContainerInativo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora IMC',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (() {}),
                    child: CartaoPadrao(
                      filhoContainer: const ConteudoIcone(
                          icone: FontAwesomeIcons.mars, descricao: 'MASCULINO'),
                      cor: corMasculinoPadrao,
                    ),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    filhoContainer: const ConteudoIcone(
                        icone: FontAwesomeIcons.venus, descricao: "FEMININO"),
                    cor: corFemininoPadrao,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CartaoPadrao(
              cor: corContainer,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
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
          Container(
            color: containerCalcular,
            height: tamanhoContainerCalcular,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
