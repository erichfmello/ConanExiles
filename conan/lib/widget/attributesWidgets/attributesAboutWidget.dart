import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/theme/text/textStyle.dart';
import 'package:flutter/material.dart';

class AttributesAboutWidget extends StatelessWidget {
  const AttributesAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: "Força: ",
                style: FontH4PrimaryColor(),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'Determina o dano que você causa com armas baseadas em força e aumenta um pouco o quanto você pode carregar.',
                    style: FontB3PrimaryColor(),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    left: 24,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: PrimaryColor(),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 8,
                  ),
                  width: MediaQuery.of(context).size.width - 100,
                  child: Text(
                    '+5% de dano com armas baseadas em força por ponto.',
                    style: FontB3PrimaryColor(),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    left: 24,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: PrimaryColor(),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 8,
                  ),
                  width: MediaQuery.of(context).size.width - 100,
                  child: Text(
                    '+0,5% de dano com armas baseadas em agilidade por ponto.',
                    style: FontB3PrimaryColor(),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    left: 24,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: PrimaryColor(),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 8,
                  ),
                  width: MediaQuery.of(context).size.width - 100,
                  child: Text(
                    '+3 peso de transporte por ponto.',
                    style: FontB3PrimaryColor(),
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: PrimaryColor(),
                width: 1,
              ),
            ),
          ),
          child: Column(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Agilidade: ",
                  style: FontH4PrimaryColor(),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Determina o dano que você causa com armas baseadas em agilidade, ajuda você a agir após uma esquiva e aumenta ligeiramente o tamanho de sua reserva de resistência.',
                      style: FontB3PrimaryColor(),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PrimaryColor(),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      '+5% de dano com armas baseadas em agilidade por ponto.',
                      style: FontB3PrimaryColor(),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PrimaryColor(),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      'Tempo mais rápido para agir (golpear, atirar, etc.) após uma esquiva.',
                      style: FontB3PrimaryColor(),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PrimaryColor(),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      '+0,5% de dano com armas baseadas em força por ponto.',
                      style: FontB3PrimaryColor(),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PrimaryColor(),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      '+1 resistência por ponto.',
                      style: FontB3PrimaryColor(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: PrimaryColor(),
                width: 1,
              ),
            ),
          ),
          child: Column(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Vitalidade: ",
                  style: FontH4PrimaryColor(),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Determina o tamanho da sua barra de saúde." a regeneração é usado para recuperar sua barra de saúde.',
                      style: FontB3PrimaryColor(),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PrimaryColor(),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      '+8% de saúde base (+16 de saúde com 200 de saúde base) por ponto.',
                      style: FontB3PrimaryColor(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: PrimaryColor(),
                width: 1,
              ),
            ),
          ),
          child: Column(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Autoridade: ",
                  style: FontH4PrimaryColor(),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Determina a quantidade de dano que seus seguidores causam e a quantidade de dano concussivo que você causa.',
                      style: FontB3PrimaryColor(),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PrimaryColor(),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      '+4% de dano de seguidor por ponto.',
                      style: FontB3PrimaryColor(),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PrimaryColor(),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      '+6% de dano concussivo por ponto.',
                      style: FontB3PrimaryColor(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: PrimaryColor(),
                width: 1,
              ),
            ),
          ),
          child: Column(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Coragem: ",
                  style: FontH4PrimaryColor(),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Determina o tamanho da sua barra de vigor e tem um efeito direto na armadura.',
                      style: FontB3PrimaryColor(),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PrimaryColor(),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      '+3 de resistência por ponto.',
                      style: FontB3PrimaryColor(),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PrimaryColor(),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      '+8 armadura por ponto',
                      style: FontB3PrimaryColor(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 16,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: PrimaryColor(),
                width: 1,
              ),
            ),
          ),
          child: Column(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: "Expertise: ",
                  style: FontH4PrimaryColor(),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Determina o peso máximo que você pode carregar." (Carregar mais do que seu máximo faz com que o jogador fique sobrecarregado.)',
                      style: FontB3PrimaryColor(),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 24,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: PrimaryColor(),
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                    ),
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      '+15 peso máximo de transporte por ponto.',
                      style: FontB3PrimaryColor(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
