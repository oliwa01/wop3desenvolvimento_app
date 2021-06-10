import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:wop3desenvolvimento_app/descricao/Finalizacao.dart';

import '../DiagnosticoEmocional.dart';
import '../Home.dart';
import '../resultados/RESULTADOS.dart';


class P16 extends StatefulWidget {
  String _codAluno;
  P16(this._codAluno);
  @override
  _P16State createState() => _P16State();
}

class _P16State extends State<P16> {
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  String _dataTimeDb;

  //
  /*
 firebase

*/
  Firestore db = Firestore.instance;
  //

  void _gravaDb () {
    _carregaTab();
    score_culpa  = (_V01 + _V02 + _V03 + _V04 + _V05 + _V06 + _V07 + _V08 + _V09 + _V10
       + _V11 + _V12 + _V13 + _V14 + _V15 + _V16 + _V17 + _V18 + _V19 + _V20
       + _V21 + _V22 + _V23 + _V24 + _V25 + _V26 + _V27 + _V28 + _V29 + _V30
       + _V31 + _V32 + _V33 + _V34 + _V35 + _V36 + _V37 + _V38 + _V39 + _V40
       + _V41 + _V42 + _V43 + _V44 + _V45 + _V46 + _V47 + _V48 + _V49 + _V50
    );

    DateTime now = DateTime.now();
    String _formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    _dataTimeDb = _formattedDate;
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Testes")
        .document("D16")
        .setData(

    {
          "Culpa" : score_culpa ,
          "Test_name":"Culpa",
          "Code":"D16","Data-teste": _formattedDate,
          "P01" : _V01, "P02" : _V02, "P03" : _V03,"P04" : _V04,"P05" : _V05,"P06" : _V06,"P07" : _V07,"P08" : _V08,"P09" : _V09,"P10" : _V10,
          "P11" : _V11, "P12" : _V12, "P13" : _V13,"P14" : _V14,"P15" : _V15,"P16" : _V16,"P17" : _V17,"P18" : _V18,"P19" : _V19,"P20" : _V20,
          "P21" : _V21, "P22" : _V22, "P23" : _V23,"P24" : _V24,"P25" : _V25,"P26" : _V26,"P27" : _V27,"P28" : _V28,"P29" : _V29,"P30" : _V30,
          "P31" : _V31, "P32" : _V32, "P33" : _V33,"P34" : _V34,"P35" : _V35,"P36" : _V36,"P37" : _V37,"P38" : _V38,"P39" : _V39,"P40" : _V40,
          "P41" : _V41, "P42" : _V42, "P43" : _V43,"P44" : _V44,"P45" : _V45,"P46" : _V46,"P47" : _V47,"P48" : _V48,"P49" : _V49,"P50" : _V50
        }
    );
    //
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Resultados")
        .document("Barreiras Interpessoais")
        .setData(
        {
          "Culpa" : score_culpa ,
        }, merge: true);
    //
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "f16": true
        });
  }

//


//
  void _carregaTab() {
    _V01 = _valorpergunta[1];
    _V02 = _valorpergunta[2];
    _V03 = _valorpergunta[3];
    _V04 = _valorpergunta[4];
    _V05 = _valorpergunta[5];
    _V06 = _valorpergunta[6];
    _V07 = _valorpergunta[7];
    _V08 = _valorpergunta[8];
    _V09 = _valorpergunta[9];
    _V10 = _valorpergunta[10];
    _V11 = _valorpergunta[11];
    _V12 = _valorpergunta[12];
    _V13 = _valorpergunta[13];
    _V14 = _valorpergunta[14];
    _V15 = _valorpergunta[15];
    _V16 = _valorpergunta[16];
    _V17 = _valorpergunta[17];
    _V18 = _valorpergunta[18];
    _V19 = _valorpergunta[19];
    _V20 = _valorpergunta[20];
    _V21 = _valorpergunta[21];
    _V22 = _valorpergunta[22];
    _V23 = _valorpergunta[23];
    _V24 = _valorpergunta[24];
    _V25 = _valorpergunta[25];
    _V26 = _valorpergunta[26];
    _V27 = _valorpergunta[27];
    _V28 = _valorpergunta[28];
    _V29 = _valorpergunta[29];
    _V30 = _valorpergunta[30];
    _V31 = _valorpergunta[31];
    _V32 = _valorpergunta[32];
    _V33 = _valorpergunta[33];
    _V34 = _valorpergunta[34];
    _V35 = _valorpergunta[35];
    _V36 = _valorpergunta[36];
    _V37 = _valorpergunta[37];
    _V38 = _valorpergunta[38];
    _V39 = _valorpergunta[39];
    _V40 = _valorpergunta[40];
    _V41 = _valorpergunta[41];
    _V42 = _valorpergunta[42];
    _V43 = _valorpergunta[43];
    _V44 = _valorpergunta[44];
    _V45 = _valorpergunta[45];
    _V46 = _valorpergunta[46];
    _V47 = _valorpergunta[47];
    _V48 = _valorpergunta[48];
    _V49 = _valorpergunta[49];
    _V50 = _valorpergunta[50];


  }


  int _npergunta = 60;
  int _resultado = 0;
  int _tresultado = 0;
  int _numeroSorteado = 1;
  int _numeroAnterior = 0;
//
  int _V01 = 0;
  int _V02 = 0;
  int _V03 = 0;
  int _V04 = 0;
  int _V05 = 0;
  int _V06 = 0;
  int _V07 = 0;
  int _V08 = 0;
  int _V09 = 0;
  int _V10 = 0;
  int _V11 = 0;
  int _V12 = 0;
  int _V13 = 0;
  int _V14 = 0;
  int _V15 = 0;
  int _V16 = 0;
  int _V17 = 0;
  int _V18 = 0;
  int _V19 = 0;
  int _V20 = 0;
  int _V21 = 0;
  int _V22 = 0;
  int _V23 = 0;
  int _V24 = 0;
  int _V25 = 0;
  int _V26 = 0;
  int _V27 = 0;
  int _V28 = 0;
  int _V29 = 0;
  int _V30 = 0;
  int _V31 = 0;
  int _V32 = 0;
  int _V33 = 0;
  int _V34 = 0;
  int _V35 = 0;
  int _V36 = 0;
  int _V37 = 0;
  int _V38 = 0;
  int _V39 = 0;
  int _V40 = 0;
  int _V41 = 0;
  int _V42 = 0;
  int _V43 = 0;
  int _V44 = 0;
  int _V45 = 0;
  int _V46 = 0;
  int _V47 = 0;
  int _V48 = 0;
  int _V49 = 0;
  int _V50 = 0;

  int score_culpa = 0;

  //
  String item_1 = "Não me incomoda.";
  String item_2="Algo que me deixa muito desconfortável.";
  String item_3="Está errado e vai arruiná-lo.";
  String item_4="Ajuda a aliviar e relaxar.";
  String item_5=" Deve ser permitido.";
  String item_6="Esta errado e é imoral.";
  String item_7="Arruina a Felicidade do Casal.";
  String item_8="São bons na minha opinião.";
  String item_9="Pode ser interessante.";
  String item_10="Não me interessa.";
  String item_11="Às vezes acordo me sentindo animado.";
  String item_12="Eu tento esquecê-los.";
  String item_13="São de mau gosto.";
  String item_14="Pode ser engraçado dependendo das pessoas presentes.";
  String item_15="Lamento dizer que está se tornando uma prática aceita.";
  String item_16="É uma expressão de afeto que é satisfatória.";
  String item_17="Não são tão incomuns.";
  String item_18="Não me interessa.";
  String item_19="É bom e agradável.";
  String item_20="Deve ser guardado para casamento e gravidez.";
  String item_21="São grosseiras, para dizer o mínimo.";
  String item_22="São muito divertidos.";
  String item_23="Eu gosto como todos os seres humanos saudáveis.";
  String item_24="Eu luto contra eles, pois devo ter controle total do meu corpo.";
  String item_25="São imprudentes e levam apenas a problemas.";
  String item_26="Tudo depende dec como você olha para ele.";
  String item_27="Estão bem desde que sejam heterossexuais.";
  String item_28="Não são prazerosos, porque você tem sentimentos preconcebidos de estar errado.";
  String item_29="Na minha opinião, não deve ser praticado.";
  String item_30="São praticados demais para estarem errados.";
  String item_31="É imaturo e ridículo.";
  String item_32="Esta se descobrindo.";
  String item_33="São perigosos para a saúde e a condição mental.";
  String item_34="São da responsabilidade de quem os realiza e não de outra pessoa.";
  String item_35="Eu tento reprimi-los.";
  String item_36="Eles são muito fortes.";
  String item_37="Não é uma boa prática até depois do casamento.";
  String item_38=" É justificado com amor.";
  String item_39="Ajudar as pessoas a se conhecerem.";
  String item_40="Não deve ser recomendado.";
  String item_41="É errado e um pecado.";
  String item_42="É uma saída normal para o desejo sexual.";
  String item_43="Está tudo bem.";
  String item_44="É uma forma de autodestruição.";
  String item_45="São horríveis e impensáveis.";
  String item_46="Tudo bem se ambos os parceiros concordarem.";
  String item_47="Tudo bem, eu acho.";
  String item_48="Eu estava sendo usado, não amado.";
  String item_49="Está tudo bem.";
  String item_50="Não deve ser praticado.";
//
  String _perguntatela = " ";
  var _valorpergunta = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var _pergunta = [
    ' ',
  "01. Piadas 'sujas' em companhia mista... Não me incomoda.",
  "01. Piadas 'sujas' em companhia mista... Algo que me deixa muito desconfortável.",
  "02. Masturbação... Está errado e vai arruiná-lo.",
  "02. Masturbação... Ajuda a aliviar e relaxar.",
  "03. Relações sexuais antes do casamento...  Deve ser permitido.",
  "03. Relações sexuais antes do casamento... Esta errado e é imoral.",
  "04. Relações sexuais antes do casamento... Arruina a Felicidade do Casal.",
  "04. Relações sexuais antes do casamento... São bons na minha opinião.",
  "05. Práticas sexuais incomuns... Pode ser interessante.",
  "05. Práticas sexuais incomuns... Não me interessa.",
  "06. Quando tenho sonhos sexuais... Às vezes acordo me sentindo animado.",
  "06. Quando tenho sonhos sexuais... Eu tento esquecê-los.",
  "07. Piadas 'sujas' em companhia mista... São de mau gosto.",
  "07. Piadas 'sujas' em companhia mista... Pode ser engraçado dependendo das pessoas presentes.",
  "08. Sexo sem penetração... Lamento dizer que está se tornando uma prática aceita.",
  "08. Sexo sem penetração... É uma expressão de afeto que é satisfatória.",
  "09. Práticas sexuais incomuns... Não são tão incomuns.",
  "09. Práticas sexuais incomuns... Não me interessa.",
  "10. Sexo... É bom e agradável.",
  "10. Sexo... Deve ser guardado para casamento e gravidez.",
  "11. Piadas 'sujas'... São grosseiras, para dizer o mínimo.",
  "11. Piadas 'sujas'... São muito divertidos.",
  "12. Quando tenho desejos sexuais... Eu gosto como todos os seres humanos saudáveis.",
  "12. Quando tenho desejos sexuais... Eu luto contra eles, pois devo ter controle total do meu corpo.",
  "13. Práticas sexuais incomuns... São imprudentes e levam apenas a problemas.",
  "13. Práticas sexuais incomuns... Tudo depende dec como você olha para ele.",
  "14. Práticas sexuais incomuns... Estão bem desde que sejam heterossexuais.",
  "14. Práticas sexuais incomuns... Não são prazerosos, porque você tem sentimentos preconcebidos de estar errado.",
  "15. Relações sexuais antes do casamento... Na minha opinião, não deve ser praticado.",
  "15. Relações sexuais antes do casamento... São praticados demais para estarem errados.",
  "16. Quando criança, descobrindo sexo ... É imaturo e ridículo.",
  "16. Quando criança, descobrindo sexo ... Esta se descobrindo.",
  "17. Práticas sexuais incomuns... São perigosos para a saúde e a condição mental.",
  "17. Práticas sexuais incomuns... São da responsabilidade de quem os realiza e não de outra pessoa.",
  "18. Quando tenho desejos sexuais... Eu tento reprimi-los.",
  "18. Quando tenho desejos sexuais... Eles são muito fortes.",
  "19. Sexo sem penetração... Não é uma boa prática até depois do casamento.",
  "19. Sexo sem penetração...  É justificado com amor.",
  "20. Relações sexuais antes do casamento... Ajudar as pessoas a se conhecerem.",
  "20. Relações sexuais antes do casamento... Não deve ser recomendado.",
  "21. Masturbação... É errado e um pecado.",
  "21. Masturbação... É uma saída normal para o desejo sexual.",
  "22. Masturbação... Está tudo bem.",
  "22. Masturbação... É uma forma de autodestruição.",
  "23. Práticas sexuais incomuns... São horríveis e impensáveis.",
  "23. Práticas sexuais incomuns... Tudo bem se ambos os parceiros concordarem.",
  "24. Se eu tivesse relações sexuais, eu me sentiria... Tudo bem, eu acho.",
  "24. Se eu tivesse relações sexuais, eu me sentiria... Eu estava sendo usado, não amado.",
  "25. Masturbação... Está tudo bem.",
  "25. Masturbação... Não deve ser praticado."

  ];
  bool _s1 = false;
  bool _c1 = false;
  bool _c2 = false;
  bool _c3 = false;
  bool _c4 = false;
  bool _c5 = false;
  bool _c6 = false;
  bool _c7 = false;
  bool _c8 = false;
  bool _c9 = false;
  bool _sc1 = false;
  bool _sc2 = false;
  bool _sc3 = false;
  bool _sc4 = false;
  bool _sc5 = false;
  bool _sc6 = false;
  bool _sc7 = false;

  //
  _montaResultado() {
    if (
    (_npergunta == 1) |
    (_npergunta == 4) |
    (_npergunta == 5) |
    (_npergunta == 8) |
    (_npergunta == 9) |
    (_npergunta == 11) |
    (_npergunta == 14) |
    (_npergunta == 16) |
    (_npergunta == 17) |
    (_npergunta == 19) |
    (_npergunta == 22) |
    (_npergunta == 23) |
    (_npergunta == 26) |
    (_npergunta == 27) |
    (_npergunta == 30) |
    (_npergunta == 32) |
    (_npergunta == 34) |
    (_npergunta == 36) |
    (_npergunta == 38) |
    (_npergunta == 39) |
    (_npergunta == 42) |
    (_npergunta == 43) |
    (_npergunta == 46) |
    (_npergunta == 47) |


    (_npergunta == 9)) {
      if (_c1) { _resultado = 6; }
      else if (_c2) { _resultado = 5; }
      else if (_c3) { _resultado = 4; }
      else if (_c4) { _resultado = 3; }
      else if (_c5) { _resultado = 2; }
      else if (_c6) { _resultado = 1; }
      else if (_c7) { _resultado = 0; }}
    else {
      if (_c1) { _resultado = 0; }
      else if (_c2) { _resultado = 1; }
      else if (_c3) { _resultado = 2; }
      else if (_c4) { _resultado = 3; }
      else if (_c5) { _resultado = 4; }
      else if (_c6) { _resultado = 5; }
      else if (_c7) { _resultado = 6; }
 }
    _valorpergunta[_numeroSorteado] = _resultado;
  }
  //
  _alteraResultado() {
    _numeroAnterior = _numeroSorteado - 1;
    if      (_valorpergunta[_numeroAnterior] == 0)  { _c1 = true;}
    else if (_valorpergunta[_numeroAnterior] == 1) { _c2 = true;}
    else if (_valorpergunta[_numeroAnterior] == 2) { _c3 = true;}
    else if (_valorpergunta[_numeroAnterior] == 3) { _c4 = true;}
    else if (_valorpergunta[_numeroAnterior] == 4) { _c5 = true;}
    else if (_valorpergunta[_numeroAnterior] == 5) { _c6 = true;}
    else if (_valorpergunta[_numeroAnterior] == 6) { _c7 = true;}
    else if (_valorpergunta[_numeroAnterior] == 5) { _c8 = true;}
    else if (_valorpergunta[_numeroAnterior] == 6) { _c9 = true;}
  }
  //
  void _limpaBotao () {
    print(_valorpergunta.toString());
    _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = false;
  }


//
  void _gerarPergunta () {
    //gerar numero randomicos
    setState(() {
      _perguntatela = _pergunta[_numeroSorteado];
      _npergunta = _numeroSorteado;
    });
  }
  //  Procedimento de finaliar o teste
  void _finalizaTeste() {

    _gravaDb();
    _tabulaResultados();
  }
  void _tabulaResultados() {


  }
  //
  @override
  void initState() {
    _gerarPergunta();
  }
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;

    double  font_adj =  (heightlua > 1600) ? heightlua / 45 :
    (heightlua > 1500)  ? heightlua / 46 :
    (heightlua > 1400)  ? heightlua / 47 :
    (heightlua > 1300)  ? heightlua / 48 :
    (heightlua > 1200)  ? heightlua / 58 :
    (heightlua > 1100)  ? heightlua / 59 :
    (heightlua > 1000)  ? heightlua / 59 :
    (heightlua > 900)  ? heightlua / 60 :
    (heightlua > 800)  ? heightlua / 65 :
    (heightlua > 700)  ? heightlua / 67 :
    (heightlua > 600)  ? heightlua / 50 :
    (heightlua > 500)  ? heightlua / 52 : heightlua / 50 ;

    double  fontpergunta =  (widthlua > 1600) ? widthlua / 37:
    (widthlua > 1500)  ? widthlua / 36 :
    (widthlua > 1400)  ? widthlua / 36 :
    (widthlua > 1300)  ? widthlua / 36 :
    (widthlua > 1200)  ? widthlua / 35 :
    (widthlua > 1100)  ? widthlua / 35:
    (widthlua > 1000)  ? widthlua / 35 :
    (widthlua > 900)  ? widthlua / 28:
    (widthlua > 800)  ? widthlua / 25 :
    (widthlua > 700)  ? widthlua / 23 :
    (widthlua > 600)  ? widthlua / 23 :
    (widthlua > 500)  ? widthlua / 24 : widthlua / 25 ;




    double padbox =  (heightlua > 1600) ? 15 :
    (heightlua > 1500)  ? 14 :
    (heightlua > 1400)  ? 13 :
    (heightlua > 1300)  ? 12 :
    (heightlua > 1200)  ? 12 :
    (heightlua > 1100)  ? 11 :
    (heightlua > 1000)  ? 10 :
    (heightlua > 900)  ? 10 :
    (heightlua > 800)  ? 9 :
    (heightlua > 700)  ? 9 :
    (heightlua > 600)  ? 8 :
    (heightlua > 500)  ? 10:  10 ;

    Color colorbar =  (_npergunta > (_pergunta.length * 0.95) ? Colors.green :
    (_npergunta > (_pergunta.length * 0.90) ? Colors.greenAccent :
    (_npergunta > (_pergunta.length * 0.80) ? Colors.lightGreenAccent :
    (_npergunta > (_pergunta.length * 0.70) ? Colors.yellowAccent:
    (_npergunta > (_pergunta.length * 0.60) ? Colors.yellow :
    (_npergunta > (_pergunta.length * 0.50) ? Colors.orangeAccent :
    (_npergunta > (_pergunta.length * 0.40) ? Colors.orange :
    (_npergunta > (_pergunta.length * 0.30) ? Colors.deepOrangeAccent :
    (_npergunta > (_pergunta.length * 0.20) ? Colors.deepOrange :
    (_npergunta > (_pergunta.length * 0.10) ? Colors.redAccent :
    (_npergunta > (_pergunta.length * 0.05) ? Colors.red : Colors.pink)))))))))));



    double  w10p = widthlua * 0.10;
    double  w20p = widthlua * 0.20;
    double  w30p = widthlua * 0.30;
    double  w40p = widthlua * 0.40;
    double  w50p = widthlua * 0.50;
    double  w60p = widthlua * 0.60;
    double  w70p = widthlua * 0.70;
    double  w80p = widthlua * 0.80;
    double  w90p = widthlua * 0.90;
    double  w100p = widthlua * 0.8;


    double barranumerob = ((1 -(_npergunta / _pergunta.length))*100 );
    double  barranumerop = ((((_npergunta / _pergunta.length)-1)*100)+100);

    double  fontpercent  =
    ( barranumerop  < 1) ? font_adj * 0.1 :
    ( barranumerop  < 2) ? font_adj * 0.2 :
    ( barranumerop  < 3) ? font_adj * 0.3 :
    ( barranumerop  < 4) ? font_adj * 0.4 :
    ( barranumerop  < 5) ? font_adj * 0.5 :
    ( barranumerop  < 6) ? font_adj * 0.6 :
    ( barranumerop  < 7) ? font_adj * 0.7 :
    ( barranumerop  < 8) ? font_adj * 0.8 :
    ( barranumerop  < 9) ? font_adj * 0.9 :
    (barranumerop  < 10) ? font_adj * 0.95 : font_adj;

    double  h10p = heightlua * 0.05;
    double  hpergunta = heightlua * 0.20;
    double  hspace = heightlua * 0.01;
    double  hnumero = heightlua * 0.05;
    double  hpb = heightlua * 0.054;
    double  hbotao = heightlua * 0.07;
    double  hvolta = heightlua * 0.07;

    double  h80p = heightlua * 0.80;

    String perpergunta = barranumerop.toString();
    //
    String item_1 = "NÃO É VERDADE";
    String item_2 = "VERDADE ESCALA 1";
    String item_3 = "VERDADE ESCALA 2";
    String item_4 = "VERDADE ESCALA 3";
    String item_5 = "VERDADE ESCALA 4";
    String item_6 = "VERDADE ESCALA 5";
    String item_7 = "VERDADE ESCALA 6";
    String t16 = "images/t16.gif";

    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(t16),
              fit: BoxFit.cover,
            )),
        child: ListView(
          children: <Widget>[
            //
            // box numero
            //
            //
            Container(
                height: hnumero,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only (top: 11),
                            width:   (w100p * (barranumerop / 100)),
                            height:  hnumero,
                            decoration: BoxDecoration(
                              color: colorbar,
                              borderRadius: _bR,
                            ),
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut,
                            child: Text(
                              barranumerop > 10 ?
                              (perpergunta.substring(0,2))+"%" :
                              (perpergunta.substring(0,1))+"%"
                              , textAlign: TextAlign.center,

                              style: TextStyle(
                                  fontSize: fontpercent,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only (top: 11),
                            width:   (w100p * (barranumerob / 100)),
                            height:  hnumero,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: _bR,
                            ),
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut
                        ),
                      ],
                    )
                  ],
                )),
            //space
            SizedBox(
                height: hspace),

            SizedBox(
                width: w90p,
                height: hpergunta,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //
                    //  pergunta
                    //
                    Column(children: <Widget>[
                      AnimatedContainer(
                        padding: EdgeInsets.all(11),
                        width:  w80p-30,
                        height: hpergunta,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: _bR,
                        ),
                        alignment: Alignment.center,
                        duration: Duration(seconds: 2),
                        curve: Curves.elasticInOut,
                        child: Text(_perguntatela, textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: fontpergunta,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      )
                    ],),


                  ],
                )

            ),
            //space
            SizedBox(
                height: hspace),

            //
            // 1
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c1 == false){
                              setState(() {
                                // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                _c1 = true;
                                _c2 =_c3 = _c4 = _c5 = _c6 = _c7 = _c8 =_c9 =  false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 =  false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c1 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _c1 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_1,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _c1 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // 2
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c2 == false){
                              setState(() {
                                // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                _c2 = true;
                                _c1 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 =_c9 =  false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 = _c7 = _c8 =_c9 =  false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c2 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _c2 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_2,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _c2 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            //3
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c3 == false){
                              setState(() {
                                // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                _c3 = true;
                                _c1 = _c2 = _c4 = _c5 = _c6 = _c7 = _c8 =_c9 =  false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 = _c7 = _c8 =_c9 =  false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c3 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _c3 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_3,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _c3 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // 4
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c4 == false){
                              setState(() {
                                _c1 = _c2 =_c3 = _c5 = _c6 = _c7 = _c8 =_c9 =  false;
                                _c4 = true;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 = _c7 = _c8 =_c9 =  false;
                              });
                            }
                          },
                          child:

                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              alignment: _sc4 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 4),
                              curve: Curves.fastLinearToSlowEaseIn,
                              decoration: BoxDecoration(
                                color: _c4 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              child:
                              Text(item_4,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _c4 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // 5
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c5 == false){
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c6 = _c7 = _c8 =_c9 =  false;
                                _c5 = true;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 = _c7 = _c8 =_c9 =  false;
                              });
                            }
                          },
                          child:

                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c5 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _sc5 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_5,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _sc5 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          )
                      )
                    ],)
                  ],
                )
            ),


            //space
            SizedBox(
                height: hspace),
            //
            // 6
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c6 == false){
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c7 = _c8 =_c9 =  false;
                                _c6 = true;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 = _c7 = _c8 =_c9 =  false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c6 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _sc6 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_6,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _c6 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          )
                      )
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
            //
            // 7
            //
            SizedBox(
                width: h80p,
                height: hpb,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c7 == false){
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 = _c8 =_c9 =  false;
                                _c7 = true;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 = _c7 = _c8 =_c9 =  false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c7 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _sc7 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_7,
                                style: TextStyle(
                                    fontSize: font_adj,
                                    color: _c7 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          )
                      )
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),


            //space
            //
            // Botoes
            //
            //space
            SizedBox(
                height: hspace),
            SizedBox(

              height: hbotao,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: w30p,
                    height: hbotao,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color(0xFFF58524),
                          Color(0XFFF92B7F),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text(
                              "Voltar",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: () {
                          if(_numeroSorteado == 1 ){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Auto_Estima(widget._codAluno)));
                          }else{
                            _limpaBotao();
                            _alteraResultado();
                            _numeroSorteado --;
                            _gerarPergunta();}
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                  ),
                  (_c1 || _c2 || _c3 || _c4 || _c5 || _c6 || _c7 || _c8 || _c9 ) ? Container(
                    width: w30p,
                    height: hbotao,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color(0XFFF92B7F),
                          Color(0xFFF58524),
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: SizedBox.expand(
                      child: FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              " Próxima",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        onPressed: () {
                          _montaResultado();
                          if(_numeroSorteado == _pergunta.length -1) {

                            _finalizaTeste();
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Finalizacao(
                                            widget._codAluno,
)));
                          }else{
                            _limpaBotao();
                            _numeroSorteado ++;
                            _gerarPergunta();}
                        },
                      ),
                    ),
                  ):
                  Container(
                      width: w30p
                  ),
                ],
              ),
            ),
            SizedBox(
                height: hspace),
            Container(
              height: hvolta,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Voltar Menu ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Home(widget._codAluno)));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
