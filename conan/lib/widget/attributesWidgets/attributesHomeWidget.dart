import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/theme/text/textStyle.dart';
import 'package:flutter/material.dart';

class AttributesHomeWidget extends StatelessWidget {
  const AttributesHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: Text(
            "Cada vez que seu personagem subir de nível, você receberá pontos de atributo (AP) adicionais. Você pode alocar esses pontos em qualquer atributo que escolher para personalizar seu personagem. Existem bônus significativos a serem ganhos à medida que você atinge vários níveis de qualquer atributo. No jogo, você pode passar o mouse sobre qualquer atributo para ler mais sobre esses bônus e a tabela de vantagens abaixo detalha-os.",
            style: FontB3PrimaryColor(),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
            top: 16,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: PrimaryColor(),
                width: 3,
              ),
            ),
          ),
          child: Text(
            "Custos",
            style: FontH4PrimaryColor(),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            "O máximo de AP é ganho no nível 60 na taxa de 1 AP por nível. Nesse ponto, você terá um total de 60 AP e não ganhará mais depois disso. Este é um recurso de design intencional do jogo. Você não pode maximizar todos os atributos e, em vez disso, precisará encontrar um equilíbrio de atributos que atenda ao seu estilo de jogo. Na verdade, o custo de maximizar qualquer atributo é caro. Custará 20 AP apenas para maximizar um atributo, o que significa que você pode maximizar completamente três atributos.",
            style: FontB3PrimaryColor(),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            "Você pode redefinir seus pontos de atributo a qualquer momento consumindo uma Arquivo:Poção da Memória Bestial.png Poção da Memória Bestial ou uma Arquivo:Poção de Lótus Amarelo.png Poção de Lótus Amarelo. A poção da memória bestial apenas redefinirá seus atributos, enquanto a poção de lótus amarelo redefinirá atributos e talentos.",
            style: FontB3PrimaryColor(),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            "No nível de atributo 10 e 20, você pode escolher entre duas vantagens.",
            style: FontB3PrimaryColor(),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
            top: 16,
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: PrimaryColor(),
                width: 3,
              ),
            ),
          ),
          child: Text(
            "Atributos corrompidos",
            style: FontH4PrimaryColor(),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            "Os jogadores extraem poder de Corrupção e corrompem seus atributos. Corromper um atributo requer que o jogador tenha pelo menos corrupção Pesada (40% de corrupção ou mais), bem como Essência da Alma, 1 Essência por ponto. Corromper uma vantagem resultará no personagem recebendo uma nova vantagem Corrompida que substituirá a antiga. Atributos corrompidos tendem a ser muito mais poderosos. No entanto, corromper um atributo também resulta em 2,5% de corrupção permanente (essa corrupção NÃO pode ser retirada). Significando corromper completamente um único atributo, resultará no jogador sofrendo 50% de corrupção permanente. No entanto, como a Corrupção permanente é limitada a 50%, o personagem pode corromper todos os atributos com a mesma penalidade máxima.",
            style: FontB3PrimaryColor(),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            "Atualmente, apenas Força, Vitalidade e Autoridade podem ser corrompidas.",
            style: FontB3PrimaryColor(),
          ),
        ),
      ],
    );
  }
}
