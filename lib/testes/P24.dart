import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:wop3desenvolvimento_app/descricao/Alegria.dart';
import 'package:wop3desenvolvimento_app/descricao/Finalizacao.dart';

import '../DiagnosticoEmocional.dart';
import '../Home.dart';
import '../resultados/RESULTADOS.dart';


class P24 extends StatefulWidget {
  String _codAluno;
  P24(this._codAluno);
  @override
  _P24State createState() => _P24State();
}

class _P24State extends State<P24> {
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

    if(_V01 == N01) {score_alegria ++;}



    DateTime now = DateTime.now();
    String _formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    _dataTimeDb = _formattedDate;
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Testes")
        .document("D24")
        .setData(
        {
          "Test_name":"Alegria",
          "Alegria" : score_alegria ,
          "Code":"D24","Data-teste": _formattedDate,
          "P01" : _V01, "P02" : _V02, "P03" : _V03,"P04" : _V04,"P05" : _V05,"P06" : _V06,"P07" : _V07,"P08" : _V08,"P09" : _V09,"P10" : _V10,
          "P11" : _V11, "P12" : _V12, "P13" : _V13,"P14" : _V14,"P15" : _V15,"P16" : _V16,"P17" : _V17,"P18" : _V18,"P19" : _V19,"P20" : _V20,
          "P21" : _V21, "P22" : _V22, "P23" : _V23,"P24" : _V24,"P25" : _V25,"P26" : _V26,"P27" : _V27,"P28" : _V28,"P29" : _V29,"P30" : _V30,
          "P31" : _V31, "P32" : _V32, "P33" : _V33,"P34" : _V34,"P35" : _V35,"P36" : _V36,"P37" : _V37,"P38" : _V38,"P39" : _V39,"P40" : _V40,
          "P41" : _V41, "P42" : _V42, "P43" : _V43,"P44" : _V44,"P45" : _V45,"P46" : _V46,"P47" : _V47,"P48" : _V48,"P49" : _V29,"P50" : _V50,
          "P51" : _V51, "P52" : _V52, "P53" : _V53,"P54" : _V54,"P55" : _V55,"P56" : _V56,"P57" : _V57,"P58" : _V59,"P59" : _V39,"P60" : _V60,
          "P61" : _V61, "P62" : _V62, "P63" : _V63,"P64" : _V64,"P65" : _V55,"P66" : _V66,"P67" : _V67,"P68" : _V69,"P69" : _V69,"P70" : _V70
        }
    );
    //
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Resultados")
        .document("Auto-Crescimento")
        .setData(
        {
          "Alegria" : score_alegria ,
        }, merge: true);
    //
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "f24" : true
        });
  }


//


//
  void _carregaTab() {
    _V01=(_valorpergunta[1]);
    _V02=(_valorpergunta[2]);
    _V03=(_valorpergunta[3]);
    _V04=(_valorpergunta[4]);
    _V05=(_valorpergunta[5]);
    _V06=(_valorpergunta[6]);
    _V07=(_valorpergunta[7]);
    _V08=(_valorpergunta[8]);
    _V09=(_valorpergunta[9]);
    _V10=(_valorpergunta[10]);
    _V11=(_valorpergunta[11]);
    _V12=(_valorpergunta[12]);
    _V13=(_valorpergunta[13]);
    _V14=(_valorpergunta[14]);
    _V15=(_valorpergunta[15]);
    _V16=(_valorpergunta[16]);
    _V17=(_valorpergunta[17]);
    _V18=(_valorpergunta[18]);
    _V19=(_valorpergunta[19]);
    _V20=(_valorpergunta[20]);
    _V21=(_valorpergunta[21]);
    _V22=(_valorpergunta[22]);
    _V23=(_valorpergunta[23]);
    _V24=(_valorpergunta[24]);
    _V25=(_valorpergunta[25]);
    _V26=(_valorpergunta[26]);
    _V27=(_valorpergunta[27]);
    _V28=(_valorpergunta[28]);
    _V29=(_valorpergunta[29]);
    _V30=(_valorpergunta[30]);
    _V31=(_valorpergunta[31]);
    _V32=(_valorpergunta[32]);
    _V33=(_valorpergunta[33]);
    _V34=(_valorpergunta[34]);
    _V35=(_valorpergunta[35]);
    _V36=(_valorpergunta[36]);
    _V37=(_valorpergunta[37]);
    _V38=(_valorpergunta[38]);
    _V39=(_valorpergunta[39]);
    _V40=(_valorpergunta[40]);
    _V41=(_valorpergunta[41]);
    _V42=(_valorpergunta[42]);
    _V43=(_valorpergunta[43]);
    _V44=(_valorpergunta[44]);
    _V45=(_valorpergunta[45]);
    _V46=(_valorpergunta[46]);
    _V47=(_valorpergunta[47]);
    _V48=(_valorpergunta[48]);
    _V49=(_valorpergunta[49]);
    _V50=(_valorpergunta[50]);
    _V51=(_valorpergunta[51]);
    _V52=(_valorpergunta[52]);
    _V53=(_valorpergunta[53]);
    _V54=(_valorpergunta[54]);
    _V55=(_valorpergunta[55]);
    _V56=(_valorpergunta[56]);
    _V57=(_valorpergunta[57]);
    _V58=(_valorpergunta[58]);
    _V59=(_valorpergunta[59]);
    _V60=(_valorpergunta[60]);
    _V61=(_valorpergunta[61]);
    _V62=(_valorpergunta[62]);
    _V63=(_valorpergunta[63]);
    _V64=(_valorpergunta[64]);
    _V65=(_valorpergunta[65]);
    _V66=(_valorpergunta[66]);
    _V67=(_valorpergunta[67]);
    _V68=(_valorpergunta[68]);
    _V69=(_valorpergunta[69]);
    _V70=(_valorpergunta[70]);
//
    if(_V01== N01) {score_alegria ++;}
    if(_V02== N02) {score_alegria ++;}
    if(_V03== N03) {score_alegria ++;}
    if(_V04== N04) {score_alegria ++;}
    if(_V05== N05) {score_alegria ++;}
    if(_V06== N06) {score_alegria ++;}
    if(_V07== N07) {score_alegria ++;}
    if(_V08== N08) {score_alegria ++;}
    if(_V09== N09) {score_alegria ++;}
    if(_V10== N10) {score_alegria ++;}
    if(_V11== N11) {score_alegria ++;}
    if(_V12== N12) {score_alegria ++;}
    if(_V13== N13) {score_alegria ++;}
    if(_V14== N14) {score_alegria ++;}
    if(_V15== N15) {score_alegria ++;}
    if(_V16== N16) {score_alegria ++;}
    if(_V17== N17) {score_alegria ++;}
    if(_V18== N18) {score_alegria ++;}
    if(_V19== N19) {score_alegria ++;}
    if(_V20== N20) {score_alegria ++;}
    if(_V21== N21) {score_alegria ++;}
    if(_V22== N22) {score_alegria ++;}
    if(_V23== N23) {score_alegria ++;}
    if(_V24== N24) {score_alegria ++;}
    if(_V25== N25) {score_alegria ++;}
    if(_V26== N26) {score_alegria ++;}
    if(_V27== N27) {score_alegria ++;}
    if(_V28== N28) {score_alegria ++;}
    if(_V29== N29) {score_alegria ++;}
    if(_V30== N30) {score_alegria ++;}
    if(_V31== N31) {score_alegria ++;}
    if(_V32== N32) {score_alegria ++;}
    if(_V33== N33) {score_alegria ++;}
    if(_V34== N34) {score_alegria ++;}
    if(_V35== N35) {score_alegria ++;}
    if(_V36== N36) {score_alegria ++;}
    if(_V37== N37) {score_alegria ++;}
    if(_V38== N38) {score_alegria ++;}
    if(_V39== N39) {score_alegria ++;}
    if(_V40== N40) {score_alegria ++;}
    if(_V41== N41) {score_alegria ++;}
    if(_V42== N42) {score_alegria ++;}
    if(_V43== N43) {score_alegria ++;}
    if(_V44== N44) {score_alegria ++;}
    if(_V45== N45) {score_alegria ++;}
    if(_V46== N46) {score_alegria ++;}
    if(_V47== N47) {score_alegria ++;}
    if(_V48== N48) {score_alegria ++;}
    if(_V49== N49) {score_alegria ++;}
    if(_V50== N50) {score_alegria ++;}
    if(_V51== N51) {score_alegria ++;}
    if(_V52== N52) {score_alegria ++;}
    if(_V53== N53) {score_alegria ++;}
    if(_V54== N54) {score_alegria ++;}
    if(_V55== N55) {score_alegria ++;}
    if(_V56== N56) {score_alegria ++;}
    if(_V57== N57) {score_alegria ++;}
    if(_V58== N58) {score_alegria ++;}
    if(_V59== N59) {score_alegria ++;}
    if(_V60== N60) {score_alegria ++;}
    if(_V61== N61) {score_alegria ++;}
    if(_V62== N62) {score_alegria ++;}
    if(_V63== N63) {score_alegria ++;}
    if(_V64== N64) {score_alegria ++;}
    if(_V65== N65) {score_alegria ++;}
    if(_V66== N66) {score_alegria ++;}
    if(_V67== N67) {score_alegria ++;}
    if(_V68== N68) {score_alegria ++;}
    if(_V69== N69) {score_alegria ++;}
    if(_V70== N70) {score_alegria ++;}
  }



  int _npergunta = 60;
  int _resultado = 0;
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
  int _V51 = 0;
  int _V52 = 0;
  int _V53 = 0;
  int _V54 = 0;
  int _V55 = 0;
  int _V56 = 0;
  int _V57 = 0;
  int _V58 = 0;
  int _V59 = 0;
  int _V60 = 0;
  int _V61 = 0;
  int _V62 = 0;
  int _V63 = 0;
  int _V64 = 0;
  int _V65 = 0;
  int _V66 = 0;
  int _V67 = 0;
  int _V68 = 0;
  int _V69 = 0;
  int _V70 = 0;
  //
  double  score_alegria = 0;
  //

  String _perguntatela = " ";
  var _valorpergunta = [
    0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0,
    0,0,0,0,0,0,0,0,0,0];
  var _pergunta = [
    " ",
    "01. Eu nunca experimentei alegria, mesmo momentânea, quando perdi a minha perplexidade e ou em estado de confusão.",
    "02. Eu nunca tive uma experiência que me fez extremamente feliz , mesmo momentânea, que me aproximou de uma identificação.",
    "03. Eu experimentei alegria extrema, mesmo que por instantes, que me fez sentir mais único do que eu normalmente sinto.",
    "04. Eu tive uma experiência que me fez sentir mais único do que eu normalmente sinto. ",
    "05. Eu experimentei alegria extrema, mesmo que por instantes, que me fez sentir que o mundo era sagrado.",
    "06. Eu experimentei alegria extrema, mesmo que por instantes, que me encheu de rendição. ",
    "07. Eu nunca experimentei alegria, mesmo momentânea, que me ajudou a aceitar totalmente o mundo.",
    "08. Eu nunca experimentei alegria, mesmo momentânea, que me fez incapaz de culpar ou condenar qualquer alguém.",
    "09. Eu experimentei alegria extrema, mesmo que por instantes, que me fez um agente mais livre do que normalmente sou.",
    "10. Eu nunca experimentei alegria, mesmo momentânea, que me fez querer fazer algo bom para o mundo.",
    "11. Eu experimentei alegria extrema, mesmo que por instantes, que me deu um vislumbre de o propósito que está por trás dos acontecimentos deste mundo.",
    "12. Eu nunca experimentei alegria, mesmo momentânea, que me permitiu perceber que todo o universo é um integrado e unificado.",
    "13. Eu experimentei alegria extrema, mesmo que por instantes, que me fez esquecer preocupações egoísta.",
    "14. Eu nunca experimentei alegria, mesmo momentânea, que me fez sentir muito fortunado e sortudo.",
    "15. Eu nunca experimentei alegria, mesmo momentânea, que me deu uma maior apreciação de falta de esforço e graça.",
    "16. Eu experimentei alegria extrema, mesmo que por instantes, que deu toda a minha vida novo significado.",
    "17. Eu nunca experimentei alegria, mesmo momentânea, que me fez incapaz de emoções negativas, apenas piedade, caridade, bondade, e talvez tristeza ou diversão.",
    "18. Eu experimentei alegria extrema, mesmo que por instantes, que fez sentir com que o tempo tivesse parado.",
    "19. Eu experimentei alegria extrema, mesmo que por instantes, que me fez sentir grande bondade em relação à humanidade.",
    "20. Eu nunca experimentei alegria, mesmo momentânea, que me fez sentir como se todos os meus desejos e necessidades estavam satisfeitos.",
    "21. Eu experimentei alegria extrema, mesmo que por instantes, que me fez gostar e aceitar todos.",
    "22. Eu experimentei alegria extrema, mesmo que por instantes, que me fez perceber o mundo e outros de uma maneira mais altruísta.",
    "23. Eu nunca experimentei alegria, mesmo momentânea, que me permitiu perceber que todo mundo tem seu lugar no universo.",
    "24. Eu nunca experimentei alegria, mesmo momentânea, que me ajudou a uma maior apreciação da singularidade e individualidade.",
    "25. Eu experimentei alegria extrema, mesmo que por instantes, que me fez sentir que o mundo é totalmente bom.",
    "26. Eu nunca experimentei alegria, mesmo momentânea, que me ajudou a uma maior apreciação da necessidade e do inevitável?",
    "27. Eu experimentei alegria extrema, mesmo que por instantes, que me deu uma maior apreciação de riqueza.",
    "28. Eu experimentei alegria extrema, mesmo que por instantes, que me fez perceber o mundo e outros de uma maneira mais auto transcendente.",
    "29. Eu experimentei alegria extrema, mesmo que por instantes, que me fez perder noção do tempo.",
    "30. Eu nunca experimentei alegria, mesmo momentânea, que me fez mais aceitar a dor, do que normalmente aceitaria.",
    "31. Eu experimentei alegria extrema, mesmo que por instantes, que me fez sentir tanto orgulhoso e humilde ao mesmo tempo.",
    "32. Eu experimentei alegria extrema, mesmo que por instantes, que removeu muitos das minhas inibições.",
    "33. Eu nunca experimentei alegria, mesmo momentânea, que me ajudou a transcender obstáculos.",
    "34. Eu nunca experimentei alegria, mesmo momentânea, que me deu uma sensação de obrigação de fazer coisas construtivas.",
    "35. Eu nunca experimentei alegria, mesmo momentânea, que me ajudou a uma maior apreciação de conclusão e encerramento do que eu tinha antes.",
    "36. Eu experimentei alegria extrema, mesmo que por instantes, que me fez sentir mais livre do que eu costumo sentir.",
    "37. Eu nunca experimentei alegria, mesmo momentânea, que envolveu prestar atenção.",
    "38. Eu nunca experimentei alegria, mesmo momentânea, que deu novo valor a minha vida.",
    "39. Eu nunca experimentei alegria, mesmo momentânea, que me fez sentir que o mundo é totalmente bonito.",
    "40. Eu nunca experimentei alegria, mesmo momentânea, que me ajudou a apreciar beleza em um grau maior do que eu costumo fazer.",
    "41. Eu nunca experimentei alegria, mesmo momentânea, que me colocar em um estado de total concentração visual.",
    "42. Eu experimentei alegria extrema, mesmo que por instantes, que produziu maior integração e unidade dentro da minha personalidade.",
    "43. Eu experimentei alegria extrema, mesmo que por instantes, que me fez muito grato pelo privilégio de tê-lo.",
    "44. Eu nunca experimentei alegria, mesmo momentânea, que me colocar em um estado de total concentração.",
    "45. Eu experimentei alegria extrema, mesmo que por instantes, que me fez sentir como se eu tivesse tudo. Eu não conseguia pensar em mais nada que eu queria.",
    "46. Eu experimentei alegria extrema, mesmo que por instantes, que reduziu muito o nível da minha ansiedade.",
    "47. Eu experimentei alegria extrema, mesmo que por instantes, que me ajudou a apreciar momentos de alegria em um grau maior do que eu costumo ter.",
    "48. Eu nunca experimentei alegria, mesmo momentânea, que me levou a perceber que há uma significativa para o universo.",
    "49. Eu nunca experimentei alegria, mesmo momentânea, que me ajudou a uma maior apreciação da dicotomia-transcendência (vendo opostos como relacionado).",
    "50. Eu nunca experimentei alegria, mesmo momentânea, que me fez ver o mundo como totalmente desejável.",
    "51. Eu nunca experimentei alegria, mesmo momentânea, que me fez mais passivo para o mundo do que eu normalmente sou.",
    "52. Eu experimentei alegria extrema, mesmo que por instantes, que me fez acreditar que eu não poderia ficar desapontado com ninguém.",
    "53. Eu nunca experimentei alegria, mesmo momentânea, que me permitiu ver as coisas, importantes e sem importância de seu significado.",
    "54. Eu nunca experimentei alegria, mesmo momentânea, que fez os conflitos da vida desaparecer.",
    "55. Eu experimentei alegria extrema, mesmo que por instantes, que me deu uma grande visão. ",
    "56. Eu nunca experimentei alegria, mesmo momentânea, que mudou a minha percepção do mundo , não olhando somente para meu umbigo.",
    "57. Eu nunca experimentei alegria, mesmo momentânea, que me fez ver os outros e o mundo de uma forma mais impessoal do que eu normalmente faço.",
    "58. Eu experimentei alegria extrema, mesmo que por instantes, que me fez sentir que as pessoas são sagradas.",
    "59. Eu experimentei alegria extrema, mesmo que por instantes, que me levou a aceitar tudo. ",
    "60. Eu nunca experimentei alegria, mesmo momentânea, que me ajudou a uma maior apreciação da perfeição.",
    "61. Eu experimentei alegria extrema, mesmo que por instantes, que me permitiu experimentar 'consciência unitária'.",
    "62. Eu nunca experimentei alegria, mesmo momentânea, que me deu um vislumbre de o 'mundo ideal' que está por trás deste mundo.",
    "63. Eu experimentei alegria extrema, mesmo que por instantes, que me fez perder orientação espacial.",
    "64. Eu experimentei alegria extrema, mesmo que por instantes, que me ajudou a ver o mundo de uma maneira mais desapegada e objetiva.",
    "65. Eu experimentei alegria extrema, mesmo que por instantes, que me permitiu ver que consciência individual é apenas um aspecto de um total transcendendo a consciência.",
    "66. Eu nunca experimentei alegria, mesmo momentânea, que me levou a acreditar que eu poderia morrer com dignidade?",
    "67. Eu experimentei alegria extrema, mesmo que por instantes, que me fez sentir que eu nem queria justificar meu valor.",
    "68. Eu experimentei alegria extrema, mesmo que por instantes, que me fez ver o mundo e outros com outros olhos.",
    "69. Eu experimentei alegria extrema, mesmo que por instantes, que me ajudou a perceber que eu nunca poderia cometer suicídio.",
    "70. Eu experimentei alegria extrema, mesmo que por instantes, que me ajudou a transcender ou resolver dicotomias como 'bonito versus feio'."

  ];

  bool _c1 = false;
  bool _c2 = false;
  //
  //
  double N01=0;
  double N02=0;
  double N03=1;
  double N04=1;
  double N05=1;
  double N06=1;
  double N07=0;
  double N08=0;
  double N09=1;
  double N10=0;
  double N11=1;
  double N12=0;
  double N13=1;
  double N14=0;
  double N15=0;
  double N16=1;
  double N17=0;
  double N18=1;
  double N19=1;
  double N20=0;
  double N21=1;
  double N22=1;
  double N23=0;
  double N24=0;
  double N25=1;
  double N26=0;
  double N27=1;
  double N28=1;
  double N29=1;
  double N30=0;
  double N31=0;
  double N32=1;
  double N33=0;
  double N34=0;
  double N35=0;
  double N36=1;
  double N37=0;
  double N38=0;
  double N39=0;
  double N40=0;
  double N41=0;
  double N42=1;
  double N43=1;
  double N44=0;
  double N45=1;
  double N46=1;
  double N47=1;
  double N48=0;
  double N49=0;
  double N50=0;
  double N51=0;
  double N52=1;
  double N53=0;
  double N54=0;
  double N55=1;
  double N56=0;
  double N57=0;
  double N58=1;
  double N59=1;
  double N60=0;
  double N61=1;
  double N62=0;
  double N63=1;
  double N64=0;
  double N65=1;
  double N66=0;
  double N67=1;
  double N68=1;
  double N69=1;
  double N70=1;
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

  }
  //
  void _limpaBotao () {
    print(_valorpergunta.toString());
    _c1 = _c2 = false;
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

    double  fontpergunta =  (widthlua > 1600) ? widthlua / 48:
    (widthlua > 1500)  ? widthlua / 45 :
    (widthlua > 1400)  ? widthlua / 45 :
    (widthlua > 1300)  ? widthlua / 45 :
    (widthlua > 1200)  ? widthlua / 45 :
    (widthlua > 1100)  ? widthlua / 45:
    (widthlua > 1000)  ? widthlua / 34 :
    (widthlua > 900)  ? widthlua / 34:
    (widthlua > 800)  ? widthlua / 34 :
    (widthlua > 700)  ? widthlua / 34 :
    (widthlua > 600)  ? widthlua / 34 :
    (widthlua > 500)  ? widthlua / 44 : widthlua / 48;




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
    String t24 = "images/t24.gif";


    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(t24),
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
                width: w60p,
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
                              Text("Verdadeiro",
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
                width: w60p,
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
                              Text("Falso",
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
                                        Alegria(widget._codAluno)));
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
