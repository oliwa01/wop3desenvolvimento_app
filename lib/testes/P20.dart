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

class P20 extends StatefulWidget {
  String _codAluno;
  P20(this._codAluno);
  @override
  _P20State createState() => _P20State();
}

class _P20State extends State<P20> {
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
    score_traumas = (_V01 + _V02 + _V03 + _V04 + _V05 + _V06 + _V07 + _V08 + _V09 + _V10
        + _V11 + _V12 + _V13 + _V14 + _V15 + _V16 + _V17 + _V18 + _V19 + _V20);

    DateTime now = DateTime.now();
    String _formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    _dataTimeDb = _formattedDate;
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Testes")
        .document("D20")
        .setData(
        {
          "traumas" : score_traumas ,
          "Test_name":"traumas",
          "Code":"D20", "Data-teste": _formattedDate,
          "P01" : _V01, "P02" : _V02, "P03" : _V03,"P04" : _V04,"P05" : _V05,"P06" : _V06,"P07" : _V07,"P08" : _V08,"P09" : _V09,"P10" : _V10,
          "P11" : _V11, "P12" : _V12, "P13" : _V13,"P14" : _V14,"P15" : _V15,"P16" : _V16,"P20" : _V17,"P18" : _V18,"P19" : _V19,"P20" : _V20,
          "P21" : _V21, "P22" : _V22, "P23" : _V23,"P24" : _V24,"P25" : _V25,"P26" : _V26,"P27" : _V27,"P28" : _V28,"P29" : _V29,"P30" : _V30,

        }
    );
    //
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Resultados")
        .document("Auto-Crescimento")
        .setData(
        {
          "traumas" : score_traumas ,
        }, merge: true);
    //
    db.collection("aluno")
        .document(widget._codAluno)
        .updateData(
        {
          "f20": true
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

  int  score_traumas = 0;




  //

  String _perguntatela = " ";
  var _valorpergunta = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,00,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var _pergunta = [
    " ",
    "1. Aprendi a olhar as coisas de uma forma mais positiva.",
    "2. Aprendi que sou mais forte do que pensava.",
    "3. Aprendi a ser uma pessoa mais otimista.",
    "4. Percebi o quanto minha família se importa comigo.",
    "5. Aprendi a ser mais confiante em mim mesmo.",
    "6. Aprendi a abordar a vida com mais calma.",
    "7. Tenho mais compaixão pelos outros.",
    "8. Agora eu sei que posso lidar com dificuldades.",
    "9. Minha relação com minha família se tornou mais importante.",
    "10. Aprendi a resolver meus problemas e não desistir.",
    "11. Aprendi a encontrar mais sentido na vida.",
    "12. Minha fé em Deus aumentou.",
    "13. Minha relação com minha família se tornou mais significativa.",
    "14. Minha vida agora tem mais significado e satisfação.",
    "15. Aprendi a apreciar a força dos outros que têm tempos difíceis.",
    "16. Minha confiança em Deus aumentou.",
    "17. Eu aprendi a viver para hoje, porque você nunca sabe o que acontecerá amanhã.",
    "18. Agora eu sei que eu posso contar com meus amigos nas dificuldade.",
    "19. Aprendi a lidar melhor com a incerteza. ",
    "20. Aprendi a ser mais paciente.",


  ];
  bool _s1 = false;
  bool _c1 = false;
  bool _c2 = false;
  bool _c3 = false;
  bool _c4 = false;
  bool _c5 = false;
  bool _c6 = false;
  bool _c7 = false;

  bool _sc5 = false;

  //
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
    if (
    (_npergunta == 3) |
    (_npergunta == 5) |
    (_npergunta == 8) |
    (_npergunta == 9) |
    (_npergunta == 11) |
    (_npergunta == 14) |
    (_npergunta == 18) |
    (_npergunta == 19) |
    (_npergunta == 21) |
    (_npergunta == 22) |
    (_npergunta == 24) |
    (_npergunta == 25) |
    (_npergunta == 27) |
    (_npergunta == 28) |
    (_npergunta == 30)) {
      if (_c1) {
        _resultado = 5;
      }
      else if (_c2) {
        _resultado = 4;
      }
      else if (_c3) {
        _resultado = 3;
      }
      else if (_c4) {
        _resultado = 2;
      }
      else if (_c5) {
        _resultado = 1;
      }
    }
    else {
      if (_c1) { _resultado = 1; }
      else if (_c2) { _resultado = 2; }
      else if (_c3) { _resultado = 3; }
      else if (_c4) { _resultado = 4; }
      else if (_c5) { _resultado = 5; }
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

    double  font_adj =  (heightlua > 1600) ? heightlua / 45 :
    (heightlua > 1500)  ? heightlua / 46 :
    (heightlua > 1400)  ? heightlua / 47 :
    (heightlua > 1300)  ? heightlua / 48 :
    (heightlua > 1200)  ? heightlua / 48 :
    (heightlua > 1100)  ? heightlua / 49 :
    (heightlua > 1000)  ? heightlua / 49 :
    (heightlua > 900)  ? heightlua / 40 :
    (heightlua > 800)  ? heightlua / 45 :
    (heightlua > 700)  ? heightlua / 40 :
    (heightlua > 600)  ? heightlua / 40 :
    (heightlua > 500)  ? heightlua / 40 : heightlua / 40 ;

    double  fontpergunta =  (widthlua > 1600) ? widthlua / 28:
    (widthlua > 1500)  ? widthlua / 25 :
    (widthlua > 1400)  ? widthlua / 25 :
    (widthlua > 1300)  ? widthlua / 25 :
    (widthlua > 1200)  ? widthlua / 25 :
    (widthlua > 1100)  ? widthlua / 25:
    (widthlua > 1000)  ? widthlua / 24 :
    (widthlua > 900)  ? widthlua / 24:
    (widthlua > 800)  ? widthlua / 24 :
    (widthlua > 700)  ? widthlua / 20 :
    (widthlua > 600)  ? widthlua / 20 :
    (widthlua > 500)  ? widthlua / 20 : widthlua / 20;




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
    double  hpergunta = heightlua * 0.23;
    double  hspace = heightlua * 0.02;
    double  hnumero = heightlua * 0.06;
    double  hpb = heightlua * 0.08;
    double  hbotao = heightlua * 0.07;
    double  hvolta = heightlua * 0.07;

    double  h80p = heightlua * 0.80;

    String perpergunta = barranumerop.toString();


    String item_1 = "ISTO NUNCA ACONTECEU COMIGO.";
    String item_2 = "ISTO ACONTECEU MUITO POUCO COMIGO.";
    String item_3 = "ISTO ACONTECEU ALGUMAS VEZES COMIGO.";
    String item_4 = "ISTO ACONTECEU VARIAS VEZES COMIGO.";
    String item_5 = "ISTO SEMPRE ACONTECE COMIGO.";
    //
    //
    String t20 = "images/t20.gif";

    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(t20),
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
            // NUNCA
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
                                _c2 = _c3 = _c4 = _c5 =  _c6 = false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = false;
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
                              alignment: Alignment.center,
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
            // RARAMENTE
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
                                _c1 = _c3 = _c4 = _c5 = _c6 =  false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 =  false;
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
                              alignment: Alignment.center,
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
            // UM POUCO DO TEMPO
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
                                _c1 = _c2 = _c4 = _c5 = _c6 =  false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 =  false;
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
                              alignment: Alignment.center,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_3,
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
            // ALGUMAS VEZES
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
                                _c1 = _c2 =_c3 = _c5 = _c6 =  false;
                                _c4 = true;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 =  false;
                              });
                            }
                          },
                          child:

                          AnimatedContainer(
                              padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb,
                              alignment: Alignment.center,
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
            // BOA PARTE DO TEMPO
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
                                _c1 = _c2 =_c3 = _c4 = _c6 =  false;
                                _c5 = true;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 =_c3 = _c4 = _c5 = _c6 =  false;
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
                              alignment: Alignment.center,
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
                  (_c1 || _c2 || _c3 || _c4 || _c5 || _c6 || _c7 ) ? Container(
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