import 'package:calculadora_imc/constantes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cartao_padrao.dart';
import 'couteudo_icone.dart';

enum Sexo { masculino, feminino }

class TelaCalculadora extends StatefulWidget {
  const TelaCalculadora({super.key});

  @override
  State<TelaCalculadora> createState() => _TelaCalculadoraState();
}

class _TelaCalculadoraState extends State<TelaCalculadora> {
  Sexo? sexoSelecionado;
  int altura = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculadora IMC',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    selecionaCartao: () {
                      setState(() {
                        sexoSelecionado = Sexo.masculino;
                      });
                    },
                    filhoContainer: const ConteudoIcone(
                        icone: FontAwesomeIcons.mars, descricao: 'MASCULINO'),
                    cor: sexoSelecionado == Sexo.masculino
                        ? kCorContainer
                        : kCorContainerInativo,
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    selecionaCartao: () {
                      setState(() {
                        sexoSelecionado = Sexo.feminino;
                      });
                    },
                    filhoContainer: const ConteudoIcone(
                        icone: FontAwesomeIcons.venus, descricao: "FEMININO"),
                    cor: sexoSelecionado == Sexo.feminino
                        ? kCorContainer
                        : kCorContainerInativo,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CartaoPadrao(
              filhoContainer: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ALTURA',
                    style: kDescricaoTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        altura.toString(),
                        style: kNumerosTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: kDescricaoTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: kContainerCalcular,
                    inactiveColor: const Color(0xFF8D8E98),
                    value: altura.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (double novoValor) {
                      setState(
                        () {
                          altura = novoValor.round();
                        },
                      );
                    },
                  ),
                ],
              ),
              cor: kCorContainer,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CartaoPadrao(
                    cor: kCorContainer,
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor: kCorContainer,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kContainerCalcular,
            height: kTamanhoContainerCalcular,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
