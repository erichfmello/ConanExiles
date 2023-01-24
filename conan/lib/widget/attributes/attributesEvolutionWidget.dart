import 'package:conan/screen/attributes/attributesController.dart';
import 'package:conan/theme/color/colorTheme.dart';
import 'package:conan/theme/text/textStyle.dart';
import 'package:conan/widget/attributes/attributesTypeWidget/attributeTypeWidget.dart';
import 'package:conan/widget/attributes/attributesTypeWidget/attributesDescriptionWidget.dart';
import 'package:conan/widget/attributes/attributesTypeWidget/attrinutesLevelWidget.dart';
import 'package:flutter/material.dart';

class AttributesEvolutionWidget extends StatefulWidget {
  final AttributesController controller;

  const AttributesEvolutionWidget({super.key, required this.controller});

  @override
  State<AttributesEvolutionWidget> createState() =>
      _AttributesEvolutionWidgetState();
}

class _AttributesEvolutionWidgetState extends State<AttributesEvolutionWidget> {
  void changeCurrentIndexAttributesType(int index) {
    setState(() {
      widget.controller.changeCurrentIndexAttributesType(index);
    });
  }

  void changeCurrentIndexLevel(int index) {
    setState(() {
      widget.controller.changeCurrentIndexLevel(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 96,
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AttributeTypeWidget(
                    iconUrl: 'lib/assest/strenghtIcon.png',
                    label: 'Força',
                    isSelected:
                        widget.controller.currentIndexAttributesType == 0
                            ? true
                            : false,
                    callback: () => changeCurrentIndexAttributesType(0),
                  ),
                  AttributeTypeWidget(
                    iconUrl: 'lib/assest/agilityIcon.png',
                    label: 'Agilidade',
                    isSelected:
                        widget.controller.currentIndexAttributesType == 1
                            ? true
                            : false,
                    callback: () => changeCurrentIndexAttributesType(1),
                  ),
                  AttributeTypeWidget(
                    iconUrl: 'lib/assest/vitalityIcon.png',
                    label: 'Vitalidade',
                    isSelected:
                        widget.controller.currentIndexAttributesType == 2
                            ? true
                            : false,
                    callback: () => changeCurrentIndexAttributesType(2),
                  ),
                  AttributeTypeWidget(
                    iconUrl: 'lib/assest/AutorityIcon.png',
                    label: 'Autoridade',
                    isSelected:
                        widget.controller.currentIndexAttributesType == 3
                            ? true
                            : false,
                    callback: () => changeCurrentIndexAttributesType(3),
                  ),
                  AttributeTypeWidget(
                    iconUrl: 'lib/assest/CoragenIcon.png',
                    label: 'Coragem',
                    isSelected:
                        widget.controller.currentIndexAttributesType == 4
                            ? true
                            : false,
                    callback: () => changeCurrentIndexAttributesType(4),
                  ),
                  AttributeTypeWidget(
                    iconUrl: 'lib/assest/ExpertiseIcon.png',
                    label: 'Expertise',
                    isSelected:
                        widget.controller.currentIndexAttributesType == 5
                            ? true
                            : false,
                    callback: () => changeCurrentIndexAttributesType(5),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    AttributesLevelWidget(
                      assetUrl: 'lib/assest/levelFiveIcon.png',
                      text: '5+',
                      isSelected: widget.controller.currentIndexLevel == 0
                          ? true
                          : false,
                      callback: () => changeCurrentIndexLevel(0),
                    ),
                    AttributesLevelWidget(
                      assetUrl: 'lib/assest/levelTenIcon.png',
                      text: '10+',
                      isSelected: widget.controller.currentIndexLevel == 1
                          ? true
                          : false,
                      callback: () => changeCurrentIndexLevel(1),
                    ),
                    AttributesLevelWidget(
                      assetUrl: 'lib/assest/levelFiftenIcon.png',
                      text: '15+',
                      isSelected: widget.controller.currentIndexLevel == 2
                          ? true
                          : false,
                      callback: () => changeCurrentIndexLevel(2),
                    ),
                    AttributesLevelWidget(
                      assetUrl: 'lib/assest/levelTwentyIcon.png',
                      text: '20+',
                      isSelected: widget.controller.currentIndexLevel == 3
                          ? true
                          : false,
                      callback: () => changeCurrentIndexLevel(3),
                    ),
                  ],
                ),
                if (widget.controller.currentIndexAttributesType == 0)
                  const AttributesDescriptionWidget(
                    text: 'Força',
                    isHeader: true,
                  )
                else if (widget.controller.currentIndexAttributesType == 1)
                  const AttributesDescriptionWidget(
                    text: 'Agilidade',
                    isHeader: true,
                  )
                else if (widget.controller.currentIndexAttributesType == 2)
                  const AttributesDescriptionWidget(
                    text: 'Vitalidade',
                    isHeader: true,
                  )
                else if (widget.controller.currentIndexAttributesType == 3)
                  const AttributesDescriptionWidget(
                    text: 'Autoridade',
                    isHeader: true,
                  )
                else if (widget.controller.currentIndexAttributesType == 4)
                  const AttributesDescriptionWidget(
                    text: 'Coragem',
                    isHeader: true,
                  )
                else if (widget.controller.currentIndexAttributesType == 5)
                  const AttributesDescriptionWidget(
                    text: 'Expertise',
                    isHeader: true,
                  ),
                if (widget.controller.currentIndexAttributesType == 0 &&
                    widget.controller.currentIndexLevel == 0)
                  const AttributesDescriptionWidget(
                    text:
                        'Ataques Pesados: Ataques Pesados e ataques especiais causam 10% mais dano.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 0 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Mestre de Combos: Finalizadores combinados causam 20% mais dano.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 0 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text: 'Segunda pele: A armadura equipada pesa 25% a menos.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 0 &&
                    widget.controller.currentIndexLevel == 2)
                  const AttributesDescriptionWidget(
                    text:
                        'Berserker: Com menos de 50% de vida, você causa 25% mais dano e ganha 100 de armadura.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 0 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Bárbaro Sanguinário: Enquanto sua vida estiver abaixo de 25%, você não sofre derrubadas nem atordoamentos, seu dano aumenta em mais 10% e sua armadura aumenta em 50.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 0 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Golpes esmagadores: Seus ataques pesados atordoam por 25% a mais tempo e não são mais rebatidos por escudos.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 1 &&
                    widget.controller.currentIndexLevel == 0)
                  const AttributesDescriptionWidget(
                    text:
                        'Golpe pelas costas: Causa 15% a mais de dano ao atacar por trás.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 1 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Disparo Mortal: Flechas e armas de arremesso viajam duas vezes mais rápido e causam 15% mais dano a alvos distantes.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 1 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Golpe preciso: 10% de perfuração ao carregar uma carga média ou leve.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 1 &&
                    widget.controller.currentIndexLevel == 2)
                  const AttributesDescriptionWidget(
                    text:
                        'Pés-ligeiros: Marchar, correr, pular, nadar e escalar custam menos energia e são mais rápidos.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 1 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Salto Aprimorado: Salte enquanto estiver no ar para fazer um segundo salto.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 1 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Bote rodopiante: Depois de se esquivar, seu próximo ataque de dano tem 25% a mais de penetração e seu próximo golpe não custa stamina.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 2 &&
                    widget.controller.currentIndexLevel == 0)
                  const AttributesDescriptionWidget(
                    text:
                        'Vitalidade selvagem: Você recebe recuperação de vida passiva.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 2 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Ressurgência: Recebe um efeito de cura único quando sua saúde cair abaixo de 50%. Pode ser recebido novamente após ser totalmente curado.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 2 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Cura Rápida: Você recebe 50% a mais de cura por efeitos de cura.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 2 &&
                    widget.controller.currentIndexLevel == 2)
                  const AttributesDescriptionWidget(
                    text: 'Robustez: Aumenta a saúde máxima em 100.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 2 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Último suspiro: Quando sua saúde cai abaixo de 50%, você remove todos os efeitos negativos e ganha 95% de redução de dano por um curto período de tempo.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 2 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Masoquista: Quando você sofre dano, você regenera a última instância do dano sofrido em 15 segundos.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 3 &&
                    widget.controller.currentIndexLevel == 0)
                  const AttributesDescriptionWidget(
                    text:
                        'Irritar: Seguidores ativos irão incitar os inimigos, tentando forçá-los a atacar seu seguidor.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 3 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Presença de Comando: Seus seguidores ativos são inspirados por suas proezas de batalha e têm sua saúde restaurada quando você causa dano em combate.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 3 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Dieta saudável: Seus seguidores ativos ganham regeneração passiva de saúde quando não estão em combate.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 3 &&
                    widget.controller.currentIndexLevel == 2)
                  const AttributesDescriptionWidget(
                    text:
                        'Cuidados Atenciosos: Seus seguidores ativos recebem 50% a mais de cura.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 3 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Bem treinado: Seus seguidores ativos têm atributos aumentados.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 3 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Grupo de Guerra: Máximo de seguidores aumentado em 1, porém suas estatísticas não influenciam mais a produção de dano do seu seguidor.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 4 &&
                    widget.controller.currentIndexLevel == 0)
                  const AttributesDescriptionWidget(
                    text:
                        'Pertinácia: Aumenta sua armadura em 40 e vigor em 20.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 4 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text: 'Diposição: seu vigor se regenera 25% mais rápido.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 4 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Solidez: Aumente sua armadura em 1/5 de sua resistência atual.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 4 &&
                    widget.controller.currentIndexLevel == 2)
                  const AttributesDescriptionWidget(
                    text:
                        'Postura defensiva: O dano recebido é reduzido em 15% enquanto você está atacando ou bloqueando.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 4 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Mestre do Escudo: Você pode bloquear ataques não bloqueáveis com um custo de resistência mais alto e reage duas vezes mais rápido após bloquear com sucesso.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 4 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Temperado a aço: Você não pode levar mais de 25% de sua saúde máxima em dano por acerto.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 5 &&
                    widget.controller.currentIndexLevel == 0)
                  const AttributesDescriptionWidget(
                    text:
                        'Sobrevivência: As ferramentas perdem a durabilidade duas vezes mais devegar e a fome e sede exaurem 33% mais devagar.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 5 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Colheita Eficiente: Acerto final ao colher concede o dobro de recursos.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 5 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Colheita cuidadosa: Você tem o dobro de chance de obter recursos raros ao coletar.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 5 &&
                    widget.controller.currentIndexLevel == 2)
                  const AttributesDescriptionWidget(
                    text:
                        'Trabalhador eficiente: Dobra a sua velocidade de coleta recursos.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 5 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Fardo de carga: Você consegue corre e esquivar enquanto estiver sobrecarregado.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 5 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Integridade Estrutural: As estruturas que você constrói são 25% mais estáveis.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 0)
                  const AttributesDescriptionWidget(
                    text: 'Força corrompida',
                    isHeader: true,
                  )
                else if (widget.controller.currentIndexAttributesType == 2)
                  const AttributesDescriptionWidget(
                    text: 'Vitalidade corrompida',
                    isHeader: true,
                  )
                else if (widget.controller.currentIndexAttributesType == 3)
                  const AttributesDescriptionWidget(
                    text: 'Autoridade corrompida',
                    isHeader: true,
                  ),
                if (widget.controller.currentIndexAttributesType == 0 &&
                    widget.controller.currentIndexLevel == 0)
                  const AttributesDescriptionWidget(
                    text:
                        'Flagelo: Cause dano adicional que aumenta com sua Força corrompida.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 0 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Chute de Mula: Seu chute empurra os inimigos mais longe e os derruba.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 0 &&
                    widget.controller.currentIndexLevel == 2)
                  const AttributesDescriptionWidget(
                    text:
                        'Destruição: Os golpes de seus golpes entorpecem seus oponentes, reduzindo seu potencial de dano.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 0 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Profanar: Chance ao causar dano de causar uma explosão de corrupção saindo da terra, derrubando e causando dano aos inimigos.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 2 &&
                    widget.controller.currentIndexLevel == 0)
                  const AttributesDescriptionWidget(
                    text:
                        'Excrescência grotesca: Você ganha regeneração de vida passiva que escala com sua Vitalidade corrompida.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 2 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Carne Retorcida: Você tem a chance de desviar o dano. A chance aumenta com sua Vitalidade corrompida.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 2 &&
                    widget.controller.currentIndexLevel == 2)
                  const AttributesDescriptionWidget(
                    text:
                        'Petrificado: Você é imune a efeitos de sangramento, veneno, doença e sunder.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 2 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Recipiente contaminado: Quando você recebe dano, você expele corrupção, causando dano em uma área ao seu redor ou corrompendo inimigos ao seu redor se eles puderem receber corrupção.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 3 &&
                    widget.controller.currentIndexLevel == 0)
                  const AttributesDescriptionWidget(
                    text:
                        'Frenesi: Quando você causa dano em combate, seus seguidores entram em estado de Frenesi. Seguidores frenéticos causam 3% a mais de dano para cada atributo de Autoridade corrompido.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 3 &&
                    widget.controller.currentIndexLevel == 1)
                  const AttributesDescriptionWidget(
                    text:
                        'Novo vínculo: Os danos sofridos por você são divididos entre você e seus seguidores.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 3 &&
                    widget.controller.currentIndexLevel == 2)
                  const AttributesDescriptionWidget(
                    text:
                        'Devorar: Dano causado por seus seguidores cura você.',
                    isHeader: false,
                  ),
                if (widget.controller.currentIndexAttributesType == 3 &&
                    widget.controller.currentIndexLevel == 3)
                  const AttributesDescriptionWidget(
                    text:
                        'Lorde Demônio: Ao causar dano, há uma chance de uma entidade demoníaca descontrolada aparecer para atacar seus inimigos temporariamente.',
                    isHeader: false,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
