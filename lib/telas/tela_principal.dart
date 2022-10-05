import 'package:calculadora_imc/constantes.dart';
import 'tela_resultados.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../componentes/cartao_padrao.dart';
import '../componentes/couteudo_icone.dart';
import '../componentes/botao_inferior.dart';
import '../componentes/botao_arredondado.dart';
import 'package:calculadora_imc/calculadora_imc.dart';

enum Sexo { masculino, feminino }

class TelaCalculadora extends StatefulWidget {
  const TelaCalculadora({super.key});

  @override
  State<TelaCalculadora> createState() => _TelaCalculadoraState();
}

class _TelaCalculadoraState extends State<TelaCalculadora> {
  Sexo? sexoSelecionado;
  int altura = 180;
  int peso = 60;
  int idade = 10;
  
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
              children: [
                Expanded(
                  child: CartaoPadrao(
                    filhoContainer: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Peso',
                          style: kDescricaoTextStyle,
                        ),
                        Text(
                          peso.toString(),
                          style: kNumerosTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BotaoArredondado(
                              icone: FontAwesomeIcons.minus,
                              mudaBotaoArredondado: () {
                                setState(() {
                                  peso--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            BotaoArredondado(
                              icone: FontAwesomeIcons.plus,
                              mudaBotaoArredondado: () {
                                setState(() {
                                  peso++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    cor: kCorContainer,
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    filhoContainer: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Idade', style: kDescricaoTextStyle),
                        Text(
                          idade.toString(),
                          style: kNumerosTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BotaoArredondado(
                              icone: FontAwesomeIcons.minus,
                              mudaBotaoArredondado: () {
                                setState(() {
                                  idade--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            BotaoArredondado(
                              icone: FontAwesomeIcons.plus,
                              mudaBotaoArredondado: () {
                                setState(() {
                                  idade++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    cor: kCorContainer,
                  ),
                ),
              ],
            ),
          ),
          BotaoInferior(
            tituloBotao: 'Calcular',
            aoPressionar: () {
              CalculadoraImc calculo = CalculadoraImc(peso: peso, altura: altura);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  TelaResultado(
                    textoResultado: calculo.calcularImc(),
                    textoIMC: calculo.obterResultado(),
                    textoAvaliacao: calculo.obterAvaliacao(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
