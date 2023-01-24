import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/theme/text/textStyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TalentsHomeWidget extends StatelessWidget {
  const TalentsHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: PrimaryColor(),
                width: 3,
              ),
            ),
          ),
          child: Text(
            'Talentos Grátis',
            style: FontH4PrimaryColor(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            'Na criação do personagem, você pode selecionar um talento inicial de Religião. No entanto, selecionar "Crom" como sua religião não oferece talentos. Um personagem de primeiro nível começa com Sobrevivência e Tecelão. No segundo nível, seu personagem ganha Ferramentas de Pedra. Todos os talentos de DLC são gratuitos, desde que os talentos de pré-requisito sejam desbloqueados.',
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
            'Talentos de Ponto de Conhecimento',
            style: FontH4PrimaryColor(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            'Cada talento tem um custo de pontos de conhecimento, bem como um certo nível que você deve atingir antes de desbloquear, e a maioria exige que você tenha um ou mais talentos anteriores desbloqueados. Conforme um jogador sobe de nível, ele adquire pontos de conhecimento. Pontos de conhecimento também podem ser concedidos consumindo Fragmento de Poder ou Tábula do Poder.',
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
            'Talentos descobertos',
            style: FontH4PrimaryColor(),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            'Talentos encontrados no mapa mundial não custam pontos de conhecimento para serem desbloqueados e não têm nenhum requisito de nível real ou pré-requisito para aprender. No entanto, em muitos casos, eles não poderão ser usados ​​sem desbloquear um certo talento de conhecimento. Por exemplo, um talento de armadura descoberto exigirá o Banco do Armeiro e a habilidade de fazer componentes-chave para fazer a armadura, que é obtido por meio do talento Armeiro.',
            style: FontB3PrimaryColor(),
          ),
        ),
      ],
    );
  }
}
