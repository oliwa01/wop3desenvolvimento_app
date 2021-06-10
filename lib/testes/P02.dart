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


class P02 extends StatefulWidget {
  String _codAluno;
  P02(this._codAluno);
  @override
  _P02State createState() => _P02State();
}

class _P02State extends State<P02> {
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
    score_sentimental =    ( _V02 + _V07 + _V08 + _V12 + _V14 + _V18 + _V20 + _V23 + _V32 + _V35 + _V39 + _V44 + _V50 + _V53 + _V55 );
    score_cognitivo =      ( _V10 + _V13 + _V15 + _V17 + _V19 + _V27 + _V29 + _V31 + _V36 + _V40 + _V42 + _V47 + _V49 + _V57 + _V59 );
    score_comportamental = ( _V04 + _V05 + _V16 + _V21 + _V25 + _V28 + _V30 + _V33 + _V38 + _V45 + _V46 + _V52 + _V54 + _V56 + _V60 );
    score_somatico =       ( _V01 + _V03 + _V06 + _V09 + _V11 + _V22 + _V24 + _V26 + _V34 + _V37 + _V41 + _V43 + _V48 + _V51 + _V58 );

    DateTime now = DateTime.now();
    String _formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    _dataTimeDb = _formattedDate;
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Testes")
        .document("D02")
        .setData(
        {
          "Test_name":"Ansiedade",
          "Ansiedade_Sentimento" : score_sentimental ,
          "Ansiedade_Cognitiva" : score_cognitivo ,
          "Ansiedade_Comportamental" : score_comportamental ,
          "Ansiedade_Somatica" : score_somatico ,
          "Code":"D02","Data-teste": _formattedDate,
          "P01" : _V01, "P02" : _V02, "P03" : _V03,"P04" : _V04,"P05" : _V05,"P06" : _V06,"P07" : _V07,"P08" : _V08,"P09" : _V09,"P10" : _V10,
          "P11" : _V11, "P12" : _V12, "P13" : _V13,"P14" : _V14,"P15" : _V15,"P16" : _V16,"P17" : _V17,"P18" : _V18,"P19" : _V19,"P20" : _V20,
          "P21" : _V21, "P22" : _V22, "P23" : _V23,"P24" : _V24,"P25" : _V25,"P26" : _V26,"P27" : _V27,"P28" : _V28,"P29" : _V29,"P30" : _V30,
          "P31" : _V31, "P32" : _V32, "P33" : _V33,"P34" : _V34,"P35" : _V35,"P36" : _V36,"P37" : _V37,"P38" : _V38,"P39" : _V39,"P40" : _V40,
          "P41" : _V41, "P42" : _V42, "P43" : _V43,"P44" : _V44,"P45" : _V45,"P46" : _V46,"P47" : _V47,"P48" : _V48,"P49" : _V29,"P50" : _V50,
          "P51" : _V51, "P52" : _V52, "P53" : _V53,"P54" : _V54,"P55" : _V55,"P56" : _V56,"P57" : _V57,"P58" : _V59,"P59" : _V39,"P60" : _V60
        }
    );
    //
    //
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Resultados")
        .document("Barreiras Pessoais")
        .setData(
        {
          "Ansiedade_Sentimento" : score_sentimental ,
          "Ansiedade_Cognitiva" : score_cognitivo ,
          "Ansiedade_Comportamental" : score_comportamental ,
          "Ansiedade_Somatica" : score_somatico ,
        }, merge: true);
    //
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "f02" : true
        });
  }


//


//
  void _carregaTab() {
    _V01 = (_valorpergunta[1] * N1);
    _V02 =( _valorpergunta[2] * N2);
    _V03 =( _valorpergunta[3] * N3);
    _V04 =( _valorpergunta[4] * N4);
    _V05 =( _valorpergunta[5] * N5);
    _V06 =( _valorpergunta[6] * N6);
    _V07 =( _valorpergunta[7] * N7);
    _V08 =( _valorpergunta[8] * N8);
    _V09 =( _valorpergunta[9] * N9);
    _V10 =( _valorpergunta[10] * N10);
    _V11 =( _valorpergunta[11] * N11);
    _V12 =( _valorpergunta[12] * N12);
    _V13 =( _valorpergunta[13] * N13);
    _V14 =( _valorpergunta[14] * N14);
    _V15 =( _valorpergunta[15] * N15);
    _V16 =( _valorpergunta[16] * N16);
    _V17 =( _valorpergunta[17] * N17);
    _V18 =( _valorpergunta[18] * N18);
    _V19 =( _valorpergunta[19] * N19);
    _V20 =( _valorpergunta[20] * N20);
    _V21 =( _valorpergunta[21] * N21);
    _V22 =( _valorpergunta[22] * N22);
    _V23 =( _valorpergunta[23] * N23);
    _V24 =( _valorpergunta[24] * N24);
    _V25 =( _valorpergunta[25] * N25);
    _V26 =( _valorpergunta[26] * N26);
    _V27 =( _valorpergunta[27] * N27);
    _V28 =( _valorpergunta[28] * N28);
    _V29 =( _valorpergunta[29] * N29);
    _V30 =( _valorpergunta[30] * N30);
    _V31 =( _valorpergunta[31] * N31);
    _V32 =( _valorpergunta[32] * N32);
    _V33 =( _valorpergunta[33] * N33);
    _V34 =( _valorpergunta[34] * N34);
    _V35 =( _valorpergunta[35] * N35);
    _V36 =( _valorpergunta[36] * N36);
    _V37 =( _valorpergunta[37] * N37);
    _V38 =( _valorpergunta[38] * N38);
    _V39 =( _valorpergunta[39] * N39);
    _V40 =( _valorpergunta[40] * N40);
    _V41 =( _valorpergunta[41] * N41);
    _V42 =( _valorpergunta[42] * N42);
    _V43 =( _valorpergunta[43] * N43);
    _V44 =( _valorpergunta[44] * N44);
    _V45 =( _valorpergunta[45] * N45);
    _V46 =( _valorpergunta[46] * N46);
    _V47 =( _valorpergunta[47] * N47);
    _V48 =( _valorpergunta[48] * N48);
    _V49 =( _valorpergunta[49] * N49);
    _V50 =( _valorpergunta[50] * N50);
    _V51 =( _valorpergunta[51] * N51);
    _V52 =( _valorpergunta[52] * N52);
    _V53 =( _valorpergunta[53] * N53);
    _V54 =( _valorpergunta[54] * N54);
    _V55 =( _valorpergunta[55] * N55);
    _V56 =( _valorpergunta[56] * N56);
    _V57 =( _valorpergunta[57] * N57);
    _V58 =( _valorpergunta[58] * N58);
    _V59 =( _valorpergunta[59] * N59);
    _V60 =( _valorpergunta[60] * N60);
  }


  int _npergunta = 60;
  int _resultado = 0;
  int _tresultado = 0;
  int _numeroSorteado = 1;
  int _numeroAnterior = 0;
//
  double  _V01 = 0;
  double  _V02 = 0;
  double  _V03 = 0;
  double  _V04 = 0;
  double  _V05 = 0;
  double  _V06 = 0;
  double  _V07 = 0;
  double  _V08 = 0;
  double  _V09 = 0;
  double  _V10 = 0;
  double  _V11 = 0;
  double  _V12 = 0;
  double  _V13 = 0;
  double  _V14 = 0;
  double  _V15 = 0;
  double  _V16 = 0;
  double  _V17 = 0;
  double  _V18 = 0;
  double  _V19 = 0;
  double  _V20 = 0;
  double  _V21 = 0;
  double  _V22 = 0;
  double  _V23 = 0;
  double  _V24 = 0;
  double  _V25 = 0;
  double  _V26 = 0;
  double  _V27 = 0;
  double  _V28 = 0;
  double  _V29 = 0;
  double  _V30 = 0;
  double  _V31 = 0;
  double  _V32 = 0;
  double  _V33 = 0;
  double  _V34 = 0;
  double  _V35 = 0;
  double  _V36 = 0;
  double  _V37 = 0;
  double  _V38 = 0;
  double  _V39 = 0;
  double  _V40 = 0;
  double  _V41 = 0;
  double  _V42 = 0;
  double  _V43 = 0;
  double  _V44 = 0;
  double  _V45 = 0;
  double  _V46 = 0;
  double  _V47 = 0;
  double  _V48 = 0;
  double  _V49 = 0;
  double  _V50 = 0;
  double  _V51 = 0;
  double  _V52 = 0;
  double  _V53 = 0;
  double  _V54 = 0;
  double  _V55 = 0;
  double  _V56 = 0;
  double  _V57 = 0;
  double  _V58 = 0;
  double  _V59 = 0;
  double  _V60 = 0;
  double  score_sentimental = 0;
  double  score_cognitivo = 0;
  double  score_comportamental = 0;
  double  score_somatico = 0;



  //

  String _perguntatela = " ";
  var _valorpergunta = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var _pergunta = [
    " ",
    "1. Eu me envergonho facilmente.",
    "2. Muitas vezes me sinto tão indefesa e desesperada que a vida se torna uma fonte de sofrimento para mim.",
    "3. O sono ruim é um dos meus maiores problemas.",
    "4. Muitas vezes evito falar com pessoas em um trem ou em um ônibus.",
    "5. Eu costumo evitar sair.",
    "6. Muitas vezes tenho dor de cabeça.",
    "7. Muitas vezes eu experimento o sentimento de constrangimento.",
    "8. Um sentimento nervoso tornou-se parte da minha vida.",
    "9. Eu costumo ter tonturas(vertigens).",
    "10. Eu às vezes não consigo pensar em nada, exceto nas minhas preocupações.",
    "11. Raramente sinto dor no peito.",
    "12. Raramente me sinto no limite.",
    "13. Eu não posso me concentrar em uma tarefa por causa da interrupção por pensamentos descontrolados.",
    "14. Raramente me sinto alegre.",
    "15. Tenho pensamentos perturbadores persistentes.",
    "16. Eu definitivamente evito retornar a lugares , onde passei por situações constrangedoras.",
    "17. Às vezes me considero uma pessoa ineficiente.",
    "18. Meus sentimentos dominam tanto a minha personalidade que eu não tenho controle sobre eles.",
    "19. Eu me preocupo muito quando eu penso em uma possível desaprovação de outros.",
    "20. Eu costumo experimentar a sensação de excitação.",
    "21. Raramente tento me afastar de trabalhos desafiadores.",
    "22. Raramente tenho sono perturbado.",
    "23. Às vezes me sinto chateado.",
    "24. Meus músculos ficam muito tensos ao longo do dia.",
    "25. Quando em casa eu costumo tentar não ficar sozinho à noite.",
    "26. Às vezes fico facilmente cansado, mesmo quando não estou trabalhando muito.",
    "27. Raramente me preocupo com eventos sem importância.",
    "28. Raramente sorrio livremente.",
    "29. Eu geralmente me preocupo que eu não vou ser capaz de lidar com dificuldades na minha vida.",
    "30. Eu costumo evitar falar com alguém que está acima de mim, como meu chefe.",
    "31. Raramente me sinto perdido em me preocupar.",
    "32. Onde quer que eu vá ou o que quer que eu faça, eu sempre tenho um sentimento de desconforto.",
    "33. Às vezes evito participar de discussões mesmo embora eu conheça bem o tema.",
    "34. Minhas mãos raramente tremem.",
    "35. Às vezes me sinto extremamente autoconsciente.",
    "36. Estou preocupado que outros possam me entender mal.",
    "37. Eu ocasionalmente experimento uma sensação de formigamento ao redor do meu corpo.",
    "38. Raramente evito as reuniões sociais.",
    "39. Às vezes me sinto feliz, mas facilmente desaparece.",
    "40. Mesmo que tudo esteja indo bem, minha mente está ocupada imaginando ideias perturbadoras.",
    "41. Raramente tenho palpitações.",
    "42. Eu não posso pensar claramente sobre qualquer coisa, porque pensamentos perturbadores ocorrem em minha mente.",
    "43. Parece haver um nó na minha garganta grande parte do Tempo.",
    "44. Não me sinto relaxado, mesmo não tendo pressa.",
    "45. Raramente evito falar em ocasiões sociais.",
    "46. Mesmo que seja necessário, às vezes evito perguntar aos outros perguntas pessoais.",
    "47. Eu raramente me imagino sendo impopular com os meus amigos.",
    "48. Eu tenho diarreia uma vez por mês ou mais.",
    "49. Muitas vezes me pego pensando em situações embaraçosas.",
    "50. Eu geralmente me sinto muito inseguro na minha vida.",
    "51. Eu sinto pressão em meu pescoço.",
    "52. Eu geralmente evito me envolver em atividades social.",
    "53. Meus sentimentos inquietos surgem a qualquer momento.",
    "54. Eu costumo tentar evitar andar em ruas lotadas.",
    "55. Eu sempre me sinto irritável.",
    "56. Eu quase nunca conto piadas.",
    "57. Estou preocupado com a forma como os outros me veem. ",
    "58. Às vezes tenho problemas estomacais.",
    "59. Metade dos meus pensamentos estão relacionados a alguns tipos de preocupações.",
    "60. Eu tento evitar enfrentar outras pessoas, mesmo que eles se aproveitaram de mim.",


  ];
  bool _s1 = false;
  bool _c1 = false;
  bool _c2 = false;
  bool _c3 = false;
  bool _c4 = false;
  bool _c5 = false;
  bool _c6 = false;
  bool _c7 = false;
  bool _sc1 = false;
  bool _sc2 = false;
  bool _sc3 = false;
  bool _sc4 = false;
  bool _sc5 = false;
  bool _sc6 = false;
  bool _sc7 = false;
  //
  int _TotalAutoEstima;
  int _TotalAnsiedade;
  int _TotalStress;
  int _TotalDispersao;
  int _TotalHiperatividade;
  int _TotalRelacionamentos;
  int _TotalDepressao;
  int _TotalLesao;
  //
  double N1 = 6.6;
  double N2 = 8.6;
  double N3 = 7.9;
  double N4 = 3.6;
  double N5 = 9;
  double N6 = 6.7;
  double N7 = 4.4;
  double N8 = 7.8;
  double N9 = 8.5;
  double N10 = 8.1;
  double N11 = 1.4;
  double N12 = 1;
  double N13 = 8.5;
  double N14 = 2.8;
  double N15 = 7.8;
  double N16 = 7.4;
  double N17 = 4.5;
  double N18 = 8.2;
  double N19 = 6.4;
  double N20 = 3.1;
  double N21 = 1.1;
  double N22 = 1.3;
  double N23 = 1.9;
  double N24 = 8.2;
  double N25 = 7;
  double N26 = 5.7;
  double N27 = 1;
  double N28 = 6.8;
  double N29 = 7;
  double N30 = 6.4;
  double N31 = 1.1;
  double N32 = 7.9;
  double N33 = 6;
  double N34 = 1.4;
  double N35 = 5.2;
  double N36 = 4.7;
  double N37 = 4.8;
  double N38 = 1.1;
  double N39 = 3.7;
  double N40 = 8.1;
  double N41 = 1.5;
  double N42 = 8.5;
  double N43 = 8.2;
  double N44 = 6.9;
  double N45 = 1.1;
  double N46 = 6.8;
  double N47 = 1;
  double N48 = 6.7;
  double N49 = 5.9;
  double N50 = 6.1;
  double N51 = 7.2;
  double N52 = 7.7;
  double N53 = 7.5;
  double N54 = 7.5;
  double N55 = 7.3;
  double N56 = 4.6;
  double N57 = 3.1;
  double N58 = 6.3;
  double N59 = 6.7;
  double N60 = 6.4;

  _montaResultado() {
     if      (_c1) { _resultado = 1;}
      else  { _resultado = 0;}
    _valorpergunta[_numeroSorteado] =_resultado;
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
  }
  //
  void _limpaBotao () {
    print(_valorpergunta.toString());
    _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = false;
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

    double  font_adj =  (heightlua > 1600) ? heightlua / 25 :
    (heightlua > 1500)  ? heightlua / 26 :
    (heightlua > 1400)  ? heightlua / 27 :
    (heightlua > 1300)  ? heightlua / 28 :
    (heightlua > 1200)  ? heightlua / 28 :
    (heightlua > 1100)  ? heightlua / 29 :
    (heightlua > 1000)  ? heightlua / 29 :
    (heightlua > 900)  ? heightlua / 20 :
    (heightlua > 800)  ? heightlua / 25 :
    (heightlua > 700)  ? heightlua / 27 :
    (heightlua > 600)  ? heightlua / 20 :
    (heightlua > 500)  ? heightlua / 22 : heightlua / 20 ;

    double  fontpergunta =  (widthlua > 1600) ? widthlua / 28:
    (widthlua > 1500)  ? widthlua / 25 :
    (widthlua > 1400)  ? widthlua / 25 :
    (widthlua > 1300)  ? widthlua / 25 :
    (widthlua > 1200)  ? widthlua / 25 :
    (widthlua > 1100)  ? widthlua / 25:
    (widthlua > 1000)  ? widthlua / 24 :
    (widthlua > 900)  ? widthlua / 24:
    (widthlua > 800)  ? widthlua / 24 :
    (widthlua > 700)  ? widthlua / 24 :
    (widthlua > 600)  ? widthlua / 24 :
    (widthlua > 500)  ? widthlua / 24 : widthlua / 18;




    double padbox =  (heightlua > 1600) ? 25 :
    (heightlua > 1500)  ? 24 :
    (heightlua > 1400)  ? 23 :
    (heightlua > 1300)  ? 22 :
    (heightlua > 1200)  ? 22 :
    (heightlua > 1100)  ? 21 :
    (heightlua > 1000)  ? 20 :
    (heightlua > 900)  ? 20 :
    (heightlua > 800)  ? 18 :
    (heightlua > 700)  ?18 :
    (heightlua > 600)  ?18 :
    (heightlua > 500)  ?18 : 18 ;

    Color colorbar =  (_npergunta > (_pergunta.length * 0.95) ? Colors.green :
    (_npergunta > (_pergunta.length * 0.90) ? Colors.greenAccent :
    (_npergunta > (_pergunta.length * 0.80) ? Colors.lightGreenAccent :
    (_npergunta > (_pergunta.length * 0.70) ? Colors.yellowAccent:
    (_npergunta > (_pergunta.length * 0.60) ? Colors.yellow :
    (_npergunta > (_pergunta.length * 0.50) ? Colors.orangeAccent :
    (_npergunta > (_pergunta.length * 0.40) ? Colors.deepOrangeAccent :
    (_npergunta > (_pergunta.length * 0.30) ? Colors.orange :
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
    ( barranumerop  < 5) ? font_adj * 0.3:
    ( barranumerop  < 8) ? font_adj * 0.4 :
    ( barranumerop  < 11) ? font_adj * 0.5 :
    ( barranumerop  < 15) ? font_adj * 0.6 :
    ( barranumerop  < 17) ? font_adj * 0.7 :
    ( barranumerop  < 19) ? font_adj * 0.8 :
    (barranumerop  < 22) ? font_adj * 0.9 : font_adj;

    double  h10p = heightlua * 0.05;
    double  hpergunta = heightlua * 0.26;
    double  hspace = heightlua * 0.05;
    double  hnumero = heightlua * 0.1;
    double  hpb = heightlua * 0.1;
    double  hbotao = heightlua * 0.05;
    double  hvolta = heightlua * 0.1;

    double  h80p = heightlua * 0.80;

    String perpergunta = barranumerop.toString();
    String t02 = "images/t02.gif";


    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(t02),
              fit: BoxFit.cover,
            )),
        child: ListView(
          children: <Widget>[
            SizedBox(
                height: hspace / 2),
            //
            // box numero
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
            // NUNCA
            //
            SizedBox(
                width: w30p,
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
                                _c2 = false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 = false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox ),
                              width: w40p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c1 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _c1 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text("SIM",
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
            // nao
            //
            SizedBox(
                width: w40p,
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
                                _c1 = false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 = false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w40p,
                              height: hpb,
                              decoration: BoxDecoration(
                                color: _c2 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: _c2 ? Alignment.center : AlignmentDirectional.topCenter,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text("NÃO",
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
                height: hspace ),
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
                  (_c1 || _c2 ) ? Container(
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
            //space
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
