import 'package:firebase/firebase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wop3desenvolvimento_app/descricao/Ansiedade.dart';
import 'package:wop3desenvolvimento_app/descricao/AutoCrescimento.dart';
import 'package:wop3desenvolvimento_app/descricao/AutoEstima.dart';
import 'package:wop3desenvolvimento_app/descricao/AutoExpressao.dart';
import 'package:wop3desenvolvimento_app/descricao/AutoImagem.dart';
import 'package:wop3desenvolvimento_app/descricao/Confian%C3%A7aF.dart';
import 'package:wop3desenvolvimento_app/descricao/Confianca.dart';
import 'package:wop3desenvolvimento_app/descricao/Controle.dart';
import 'package:wop3desenvolvimento_app/descricao/CrencasPessoais.dart';
import 'package:wop3desenvolvimento_app/descricao/Culpa.dart';
import 'package:wop3desenvolvimento_app/descricao/Depressao.dart';
import 'package:wop3desenvolvimento_app/descricao/Destino.dart';
import 'package:wop3desenvolvimento_app/descricao/Flexibilidade.dart';
import 'package:wop3desenvolvimento_app/descricao/GerenciarTempo.dart';
import 'package:wop3desenvolvimento_app/descricao/Impulsividade.dart';
import 'package:wop3desenvolvimento_app/descricao/LidarcomoNovo.dart';
import 'package:wop3desenvolvimento_app/descricao/Preocupacao.dart';
import 'package:wop3desenvolvimento_app/descricao/Raiva.dart';
import 'package:wop3desenvolvimento_app/descricao/Relacionamento.dart';
import 'package:wop3desenvolvimento_app/descricao/Simpatia.dart';
import 'package:wop3desenvolvimento_app/descricao/dominancia_cerebral.dart';
import 'package:wop3desenvolvimento_app/descricao/m_inteligencia.dart';


import 'DISC/ResultadosDisc.dart';
import 'DISC/TelaDisc.dart';
import 'Login.dart';
import 'descricao/Alegria.dart';
import 'descricao/AutoEficacia.dart';
import 'descricao/DescricaoTM.dart';
import 'descricao/Empatia.dart';
import 'descricao/Intimidade.dart';
import 'descricao/Mortabilidade.dart';
import 'descricao/Traumas.dart';
import 'descricao/perc_deducao.dart';
import 'descricao/perc_logica.dart';
import 'graficos/Graficos.dart';


class Home extends StatefulWidget {
  String _codAluno;
  Home(this._codAluno);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>  {

  AnimationController controller;


  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  //
  String _nomeAluno = "";
  bool _t1 = false;
  bool _t2 = false;
  bool _t3 = false;
  bool _t4 = false;
  bool _t5 = false;
  bool _t6 = false;
  bool _t7 = false;
  bool _t8 = false;
  bool _t9 = false;
  bool _t10 = false;
  bool _t11 = false;
  bool _t12 = false;
  bool _t13 = false;
  bool _t14 = false;
  bool _t15 = false;
  bool _t16 = false;
  bool _t17 = false;
  bool _t18 = false;
  bool _t19 = false;
  bool _t20 = false;
  bool _t21 = false;
  bool _t22 = false;
  bool _t23 = false;
  bool _t24 = false;
  bool _t25 = false;
  bool _t26 = false;
  bool _t27 = false;
  bool _t28 = false;
  bool _t29 = false;
  bool _t30 = false;
  bool _f1 = false;
  bool _f2 = false;
  bool _f3 = false;
  bool _f4 = false;
  bool _f5 = false;
  bool _f6 = false;
  bool _f7 = false;
  bool _f8 = false;
  bool _f9 = false;
  bool _f10 = false;
  bool _f11 = false;
  bool _f12 = false;
  bool _f13 = false;
  bool _f14 = false;
  bool _f15 = false;
  bool _f16 = false;
  bool _f17 = false;
  bool _f18 = false;
  bool _f19 = false;
  bool _f20 = false;
  bool _f21 = false;
  bool _f22 = false;
  bool _f23 = false;
  bool _f24 = false;
  bool _f25 = false;
  bool _f26 = false;
  bool _f27 = false;
  bool _f28 = false;
  bool _f29 = false;
  bool _f30 = false;
  bool _e1 = false;
  bool _e2 = false;
  bool _e3 = false;
  bool _e4 = false;
  bool _e5 = false;
  bool _e6 = false;
  bool _e7 = false;
  bool _e8 = false;
  bool _e9 = false;
  bool _e10 = false;
  bool _e11 = false;
  bool _e12 = false;
  bool _e13 = false;
  bool _e14 = false;
  bool _e15 = false;
  bool _e16 = false;
  bool _e17 = false;
  bool _e18 = false;
  bool _e19 = false;
  bool _e20 = false;
  bool _e21 = false;
  bool _e22 = false;
  bool _e23 = false;
  bool _e24 = false;
  bool _e25 = false;
  bool _e26 = false;
  bool _e27 = false;
  bool _e28 = false;
  bool _e29 = false;
  bool _e30 = false;


  //
  String _tit1 = "1. Como você se sente sobre si mesmo? ";
  String _tit2 = "2. Quão ansioso você está? ";
  String _tit3 = "3. Quão deprimido você está? ";
  String _tit4 = "4. Quem controla seu destino?";
  String _tit5 = "5. Quão racional você é? ";
  String _tit6 = "6. Quão impulsivo você é? ";
  String _tit7 = "7. Como você se sente sobre seu corpo? ";
  String _tit8 = "8. Quanto você se preocupa? ";
  String _tit9 = "9. Quão amigável você é? ";
  String _tit10 = "10. Quão assertivo você é? ";
  String _tit11 = "11. Quão capaz você é da intimidade? ";
  String _tit12 = "12. Você é uma pessoa controladora? ";
  String _tit13 = "13. Você é uma pessoa zangada? ";
  String _tit14 = "14. Quão confiante você está?(Masculino) ";
  String _tit14f = "14. Quão confiante você está?(Feminino) ";
  String _tit15 = "15. Quão romântico você é? ";
  String _tit16 = "16. Quão culpado você é sobre sexo? ";
  String _tit17 = "17. Como você lida com seu Mau Humor?";
  String _tit18 = "18. Quão eficaz uma pessoa é você? ";
  String _tit19 = "19. Quão inflexivel você é? ";
  String _tit20 = "20. Quão bem você lida com Traumas? ";
  String _tit21 = "21. Quão empático você é? ";
  String _tit22 = "22. Como você lida com suas Vulnerabilidades? ";
  String _tit23 = "23. Você gosta de novas experiências? ";
  String _tit24 = "24. Você experimenta momentos de alegria? ";
  String _tit25 = "25. PERCEPÇÃO DE DEDUÇÃO ";
  String _tit26 = "26. PERCEPÇÃO LÓGICA ";
  String _tit27 = "27. MULTIPLAS INTELIGÊNCIAS ";
  String _tit28 = "28. DOMINÂNCIA CEREBRAL ";
  String _tit29 = "29. PADRÃO PREDOMINANTE ";
  String _tit30 = "30. Gerenciamento de Tempo. ";


  //
  Color _color1 = Colors.green;
  //

  _carregaAluno () async {
    Firestore db = Firestore.instance;
    //
    DocumentSnapshot documentSnapshot = await db.collection("aluno")
        .document(widget._codAluno)
        .get();

    var dadosdb = documentSnapshot;
    setState(() {
      _nomeAluno = (dadosdb['nome']);
      _t1 = (dadosdb['t01']);
      _t2 = (dadosdb['t02']);
      _t3 = (dadosdb['t03']);
      _t4 = (dadosdb['t04']);
      _t5 = (dadosdb['t05']);
      _t6 = (dadosdb['t06']);
      _t7 = (dadosdb['t07']);
      _t8 = (dadosdb['t08']);
      _t9 = (dadosdb['t09']);
      _t10 = (dadosdb['t10']);
      _t11 = (dadosdb['t11']);
      _t12 = (dadosdb['t12']);
      _t13 = (dadosdb['t13']);
      _t14 = (dadosdb['t14']);
      _t15 = (dadosdb['t15']);
      _t16 = (dadosdb['t16']);
      _t17 = (dadosdb['t17']);
      _t18 = (dadosdb['t18']);
      _t19 = (dadosdb['t19']);
      _t20 = (dadosdb['t20']);
      _t21 = (dadosdb['t21']);
      _t22 = (dadosdb['t22']);
      _t23 = (dadosdb['t23']);
      _t24 = (dadosdb['t24']);
      _t25 = (dadosdb['t25']);
      _t26 = (dadosdb['t26']);
      _t27 = (dadosdb['t27']);
      _t28 = (dadosdb['t28']);
      _t29 = (dadosdb['t29']);
      _t30 = (dadosdb['t30']);
      _e1 = (dadosdb['e01']);
      _e2 = (dadosdb['e02']);
      _e3 = (dadosdb['e03']);
      _e4 = (dadosdb['e04']);
      _e5 = (dadosdb['e05']);
      _e6 = (dadosdb['e06']);
      _e7 = (dadosdb['e07']);
      _e8 = (dadosdb['e08']);
      _e9 = (dadosdb['e09']);
      _e10 = (dadosdb['e10']);
      _e11 = (dadosdb['e11']);
      _e12 = (dadosdb['e12']);
      _e13 = (dadosdb['e13']);
      _e14 = (dadosdb['e14']);
      _e15 = (dadosdb['e15']);
      _e16 = (dadosdb['e16']);
      _e17 = (dadosdb['e17']);
      _e18 = (dadosdb['e18']);
      _e19 = (dadosdb['e19']);
      _e20 = (dadosdb['e20']);
      _e21 = (dadosdb['e21']);
      _e22 = (dadosdb['e22']);
      _e23 = (dadosdb['e23']);
      _e24 = (dadosdb['e24']);
      _e25 = (dadosdb['e25']);
      _e26 = (dadosdb['e26']);
      _e27 = (dadosdb['e27']);
      _e28 = (dadosdb['e28']);
      _e29 = (dadosdb['e29']);
      _e30 = (dadosdb['e30']);
      _f1 = (dadosdb['f01']);
      _f2 = (dadosdb['f02']);
      _f3 = (dadosdb['f03']);
      _f4 = (dadosdb['f04']);
      _f5 = (dadosdb['f05']);
      _f6 = (dadosdb['f06']);
      _f7 = (dadosdb['f07']);
      _f8 = (dadosdb['f08']);
      _f9 = (dadosdb['f09']);
      _f10 = (dadosdb['f10']);
      _f11 = (dadosdb['f11']);
      _f12 = (dadosdb['f12']);
      _f13 = (dadosdb['f13']);
      _f14 = (dadosdb['f14']);
      _f15 = (dadosdb['f15']);
      _f16 = (dadosdb['f16']);
      _f17 = (dadosdb['f17']);
      _f18 = (dadosdb['f18']);
      _f19 = (dadosdb['f19']);
      _f20 = (dadosdb['f20']);
      _f21 = (dadosdb['f21']);
      _f22 = (dadosdb['f22']);
      _f23 = (dadosdb['f23']);
      _f24 = (dadosdb['f24']);
      _f25 = (dadosdb['f25']);
      _f26 = (dadosdb['f26']);
      _f27 = (dadosdb['f27']);
      _f28 = (dadosdb['f28']);
      _f29 = (dadosdb['f29']);
      _f30 = (dadosdb['f30']);


    });
  }

  @override
  void initState()  {


    super.initState();
    _carregaAluno();

  }


  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;

    bool _portrait = widthlua > heightlua ? false: true;
    double  _w100 =  widthlua;
    double  _w900 =  widthlua * 0.9;
    double  _w80 =  widthlua * 0.8;
    double  _w70 =  widthlua * 0.7;
    double  _w60 =  widthlua * 0.6;
    double  _w50 =  widthlua * 0.5;
    double  _w40 =  widthlua * 0.4;
    double  _w30 =  widthlua * 0.3;



    double  font_adj =  (heightlua > 1600) ? heightlua / 35 :
    (heightlua > 1500)  ? heightlua / 36 :
    (heightlua > 1400)  ? heightlua / 37 :
    (heightlua > 1300)  ? heightlua / 38 :
    (heightlua > 1200)  ? heightlua / 38 :
    (heightlua > 1100)  ? heightlua / 39 :
    (heightlua > 1000)  ? heightlua / 39 :
    (heightlua > 900)  ? heightlua / 40 :
    (heightlua > 800)  ? heightlua / 45 :
    (heightlua > 700)  ? heightlua / 47 :
    (heightlua > 600)  ? heightlua / 50 :
    (heightlua > 500)  ? heightlua / 52 : heightlua / 60 ;

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
    (heightlua > 500)  ? 7 :  6 ;



    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text("WOP3 - Desenvolvimento Humano"),
                  flexibleSpace: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          child: Icon(Icons.arrow_back,size: 40,color: Colors.white),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HomeDesktop()));
                          },
                        )
                      ],
                    ),
                  ),
                  bottom: TabBar(
                    indicatorColor: Colors.green,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      Tab(icon: Icon(
                          FontAwesomeIcons.acquisitionsIncorporated,size: 40.0)),
                      Tab(icon: Icon(
                          FontAwesomeIcons.audioDescription, size: 40.0))
                    ],
                  ),

                ),
                body: TabBarView(
                    children: [
                      Padding(
                        padding: EdgeInsets.only( top: 38.0),
                        child: ListView(
                            children: <Widget>[
                              SizedBox(
                                child:SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                        children: <Widget>[
//nome aluno
                                          Container(
                                            width: _portrait ? _w80 :_w50,
                                            height: 80,
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                stops: [0.3, 1],
                                                colors:  [
                                                  Colors.white ,
                                                  Colors.white ,
                                                ],
                                              ),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            child: SizedBox.expand(
                                              child: FlatButton(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: <Widget>[
                                                    Text(_nomeAluno.toString(),
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                      ),
                                                      textAlign: TextAlign.center,
                                                    ),
                                                    Container(
                                                        child: SizedBox(
                                                          child: Icon(Icons.refresh),
                                                          height: 50, width: 50,)
                                                    ),
                                                  ],
                                                ),
                                                onPressed: () {
                                                  _carregaAluno();

                                                },
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              height: 10
                                          ),

//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e1,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      _f1 ? Colors.green :  _t1  ? Colors.blue : Colors.grey ,
                                                      _f1 ? Colors.teal :  _t1  ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t1 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit1,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t1 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t1) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    AutoEstima(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e1,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e2,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t2 && _f2 ) ? Colors.green :( _t2 || _f2 ) ? Colors.blue : Colors.grey ,
                                                      ( _t2 && _f2 ) ? Colors.teal :( _t2 || _f2 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t2 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit2,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t2 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t2) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Ansiedade(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          //
                                          Visibility(
                                              visible: _e2,
                                              child:SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e3,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t3 && _f3 ) ? Colors.green :( _t3 || _f3 ) ? Colors.blue : Colors.grey ,
                                                      ( _t3 && _f3 ) ? Colors.teal :( _t3 || _f3 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t3 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit3,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t3 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t3) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Depressao(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e3,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e4,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t4 && _f4 ) ? Colors.green :( _t4 || _f4 ) ? Colors.blue : Colors.grey ,
                                                      ( _t4 && _f4 ) ? Colors.teal :( _t4 || _f4 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t4 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit4,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t4 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t4) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Destino(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e4,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e5,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t5 && _f5 ) ? Colors.green :( _t5 || _f5 ) ? Colors.blue : Colors.grey ,
                                                      ( _t5 && _f5 ) ? Colors.teal :( _t5 || _f5 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t5 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit5,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t5 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t5) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    CrencasPessoais(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e5,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e6,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t6 && _f6 ) ? Colors.green :( _t6 || _f6 ) ? Colors.blue : Colors.grey ,
                                                      ( _t6 && _f6 ) ? Colors.teal :( _t6 || _f6 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t6 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit6,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t6 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t6) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Impulsividade(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e6,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e7,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t7 && _f7 ) ? Colors.green :( _t7 || _f7 ) ? Colors.blue : Colors.grey ,
                                                      ( _t7 && _f7 ) ? Colors.teal :( _t7 || _f7 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t7 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit7,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t7 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t7) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    AutoImagem(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e7,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),

//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e8,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t8 && _f8 ) ? Colors.green :( _t8 || _f8 ) ? Colors.blue : Colors.grey ,
                                                      ( _t8 && _f8 ) ? Colors.teal : (_t8 || _f8 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t8 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit8,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t8 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t8) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Preocupacao(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e8,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e9,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t9 && _f9 ) ? Colors.green :( _t9 || _f9 ) ? Colors.blue : Colors.grey ,
                                                      ( _t9 && _f9 ) ? Colors.teal :( _t9 || _f9 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t9 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit9,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t9 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t9) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Simpatia(widget._codAluno)));}


                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e9,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e10,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t10 && _f10 ) ? Colors.green :( _t10 || _f10 ) ? Colors.blue : Colors.grey ,
                                                      ( _t10 && _f10 ) ? Colors.teal :( _t10 || _f10 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t10? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit10,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t10 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t10) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    AutoExpressao(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e10,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e11,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t11 && _f11 ) ? Colors.green :( _t11 || _f11 ) ? Colors.blue : Colors.grey ,
                                                      ( _t11 && _f11 ) ? Colors.teal :( _t11 || _f11 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t11 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit11,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t11 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t11) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Intimidade(widget._codAluno)));}
                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e11,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//

//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e12,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t12 && _f12 ) ? Colors.green :( _t12 || _f12 ) ? Colors.blue : Colors.grey ,
                                                      ( _t12 && _f12 ) ? Colors.teal :( _t12 || _f12 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t12 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit12,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t12 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t12) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Controle(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e12,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e13,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t13 && _f13 ) ? Colors.green :( _t13 || _f13 ) ? Colors.blue : Colors.grey ,
                                                      ( _t13 && _f13 ) ? Colors.teal :( _t13 || _f13 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t13 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit13,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t13 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t13) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Raiva(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e13,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e14,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t14 && _f14 ) ? Colors.green :( _t14 || _f14 ) ? Colors.blue : Colors.grey ,
                                                      ( _t14 && _f14 ) ? Colors.teal :( _t14 || _f14 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t14 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit14,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t14 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t14) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Confianca(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e14,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          //multiplaqs inteligencias
                                          Visibility(
                                              visible: _e30,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t30 && _f30 ) ? Colors.green :( _t30 || _f30 ) ? Colors.blue : Colors.grey ,
                                                      ( _t30 && _f30 ) ? Colors.teal :( _t30 || _f30 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t30 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit14f,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t30 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t30) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    ConfiancaF(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e30,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//

//
//multiplaqs inteligencias
                                          Visibility(
                                              visible: _e15,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t15 && _f15 ) ? Colors.green :( _t15 || _f15 ) ? Colors.blue : Colors.grey ,
                                                      ( _t15 && _f15 ) ? Colors.teal :( _t15 || _f15 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t15 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit15,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t15 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t15) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Relacionamento(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e15,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e16,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t16 && _f16 ) ? Colors.green :( _t16 || _f16 ) ? Colors.blue : Colors.grey ,
                                                      ( _t16 && _f16 ) ? Colors.teal :( _t16 || _f16 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t16 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit16,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t16 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t16) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Culpa(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e16,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e17,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t17 && _f17 ) ? Colors.green :( _t17 || _f17 ) ? Colors.blue : Colors.grey ,
                                                      ( _t17 && _f17 ) ? Colors.teal :( _t17 || _f17 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t17 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit17,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t17 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t17) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    AutoCrescimento(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e17,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e18,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t18 && _f18 ) ? Colors.green :( _t18 || _f18 ) ? Colors.blue : Colors.grey ,
                                                      ( _t18 && _f18 ) ? Colors.teal :( _t18 || _f18 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t18 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit18,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t18 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t18) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    AutoEficacia(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e18,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e19,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t19 && _f19 ) ? Colors.green :( _t19 || _f19 ) ? Colors.blue : Colors.grey ,
                                                      ( _t19 && _f19 ) ? Colors.teal :( _t19 || _f19 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t19 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit19,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t19 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t19) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Flexibilidade(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e19,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e20,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t20 && _f20 ) ? Colors.green :( _t20 || _f20 ) ? Colors.blue : Colors.grey ,
                                                      ( _t20 && _f20 ) ? Colors.teal :( _t20 || _f20 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t20 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit20,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t20 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t20) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Traumas(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e20,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e21,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t21 && _f21 ) ? Colors.green :( _t21 || _f21 ) ? Colors.blue : Colors.grey ,
                                                      ( _t21 && _f21 ) ? Colors.teal :( _t21 || _f21 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t21 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit21,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t21 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t21) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Empatia(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e21,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e22,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t22 && _f22 ) ? Colors.green :( _t22 || _f22 ) ? Colors.blue : Colors.grey ,
                                                      ( _t22 && _f22 ) ? Colors.teal :( _t22 || _f22 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t22 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit22,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t22 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t22) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Mortabilidade(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e22,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e23,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t23 && _f23 ) ? Colors.green :( _t23 || _f23 ) ? Colors.blue : Colors.grey ,
                                                      ( _t23 && _f23 ) ? Colors.teal :( _t23 || _f23 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t23 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit23,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t23 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t23) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    LidarcomoNovo(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e23,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e24,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t24 && _f24 ) ? Colors.green :( _t24 || _f24 ) ? Colors.blue : Colors.grey ,
                                                      ( _t24 && _f24 ) ? Colors.teal :( _t24 || _f24 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t24 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit24,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t24 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t24) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Alegria(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e24,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e25,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t25 && _f25 ) ? Colors.green :( _t25 || _f25 ) ? Colors.blue : Colors.grey ,
                                                      ( _t25 && _f25 ) ? Colors.teal :( _t25 || _f25 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t25 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit25,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t25 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t25) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    perc_deducao(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e25,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e26,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t26 && _f26 ) ? Colors.green :( _t26 || _f26 ) ? Colors.blue : Colors.grey ,
                                                      ( _t26 && _f26 ) ? Colors.teal :( _t26 || _f26 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t26 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit26,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t26 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t26) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    perc_logica(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e26,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e27,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t26 && _f26 ) ? Colors.green :( _t26 || _f26 ) ? Colors.blue : Colors.grey ,
                                                      ( _t26 && _f26 ) ? Colors.teal :( _t26 || _f26 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t27 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit27,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t27 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t27) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    M_inteligencias(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e27,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                                                                    Visibility(
                                              visible: _e28,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t27 && _f27 ) ? Colors.green :( _t27 || _f27 ) ? Colors.blue : Colors.grey ,
                                                      ( _t27 && _f27 ) ? Colors.teal :( _t27 || _f27 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t28 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit28,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t28 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t28) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    dominancia_crebral(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e28,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e29,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t29 && _f29 ) ? Colors.green :( _t29 || _f29 ) ? Colors.blue : Colors.grey ,
                                                      ( _t29 && _f29 ) ? Colors.teal :( _t29 || _f29 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t29 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit29,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t29 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t29) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    TelaDisc(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e29,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//
                                          Visibility(
                                              visible: _e30,
                                              child:
                                              Container(
                                                width: _portrait ? _w80 :_w50,
                                                height: 80,
                                                alignment: Alignment.centerLeft,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    stops: [0.3, 1],
                                                    colors:  [
                                                      ( _t30 && _f30 ) ? Colors.green :( _t30 || _f30 ) ? Colors.blue : Colors.grey ,
                                                      ( _t30 && _f30 ) ? Colors.teal :( _t30 || _f30 ) ? Colors.indigo : Colors.grey ,
                                                    ]

                                                    ,
                                                  ),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(5),
                                                  ),
                                                ),
                                                child: SizedBox.expand(
                                                  child: FlatButton(
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: <Widget>[
                                                        Container(
                                                            child: SizedBox(
                                                              child: _t30 ? Image.asset("images/logo.png"):
                                                              Icon(Icons.lock),
                                                              height: 28, width: 28,)
                                                        ),
                                                        Text(_tit30,
                                                          style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: _t30 ? Colors.white : Colors.black,
                                                            fontSize: 18,
                                                          ),
                                                          textAlign: TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                    onPressed: () {
                                                      if(_t30) {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    GerenciarTempo(widget._codAluno)));}

                                                    },
                                                  ),
                                                ),
                                              )),
                                          Visibility(
                                              visible: _e30,
                                              child:
                                              SizedBox(
                                                  height: 10
                                              )),
//


                                        ]
                                    )
                                ),
                              )
                            ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Videos Treinamentos', style: TextStyle(
                                    fontSize: 24.0, fontWeight: FontWeight.bold),),
                                SizedBox(height: 10.0,),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {},
                                        child:
                                        AnimatedContainer(
                                            padding: EdgeInsets.all(10),
                                            width: 350.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: _bR,
                                            ),
                                            alignment: Alignment.center,
                                            duration: Duration(seconds: 3),
                                            curve: Curves.fastLinearToSlowEaseIn,
                                            child: Row(
                                              children: <Widget>[

                                                Icon(FontAwesomeIcons.raspberryPi,
                                                    size: 40.0),
                                                Text("      Orientação de Carreira",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold
                                                    )
                                                )
                                              ],


                                            )

                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      //
                      //
                    ])
            )
        )
    );
  }
}
class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}
//
//
//
class _ListPageState extends State<ListPage> {
  //
  Future getPosts() async {
    int currentTime;
    var db = Firestore.instance;
    QuerySnapshot qn = await
    db.collection("aluno")
        .document("001")
        .collection("Testes")
        .getDocuments();
    return qn.documents;
  }

  //

  //
  Color _cv1 = Colors.orange;
  Color _cv2 = Colors.orange;
  Color _cv3 = Colors.orange;
  Color _cv4 = Colors.orange;
  Color _cv5 = Colors.orange;
  Color _cv6 = Colors.orange;
  Color _cv7 = Colors.orange;
  Color _cv8 = Colors.orange;


  Color _grey = Colors.grey;
  Color _green = Colors.green;
  Color _yellow = Colors.yellow;

  int _TotalAutoEstima;
  int _TotalAnsiedade;
  int _TotalStress;
  int _TotalDispersao;
  int _TotalHiperatividade;
  int _TotalRelacionamentos;
  int _TotalDepressao;
  int _TotalLesao;
  bool corDisc = false;
  bool corDE = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
            future: getPosts(),
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text("Loadding ......"),
                );
              }
              else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, index) {
                      return Container(
                          padding: EdgeInsets.all(20),
                          width: 200,
                          height: 100,
                          color: (snapshot.data[index].data["Teste-Code"] == "DE") ? Colors.green : Colors.blue,

                          child: ListTile(
                            leading: Icon((snapshot.data[index].data["Teste-Code"] == "DE") ? Icons.show_chart : Icons.sort , size: 40.0),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                            title: Text(snapshot.data[index].data["Teste"],
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            subtitle: Text(snapshot.data[index].data["data-teste"] ),
                            onTap: () {


                              if (snapshot.data[index].data["Teste-Code"] == "DE") {
                                int P01 = int.parse(snapshot.data[index].data["P01"].toString());
                                int P02 = int.parse(snapshot.data[index].data["P02"].toString());
                                int P03 = int.parse(snapshot.data[index].data["P03"].toString());
                                int P04 = int.parse(snapshot.data[index].data["P04"].toString());
                                int P05 = int.parse(snapshot.data[index].data["P05"].toString());
                                int P06 = int.parse(snapshot.data[index].data["P06"].toString());
                                int P07 = int.parse(snapshot.data[index].data["P07"].toString());
                                int P08 = int.parse(snapshot.data[index].data["P08"].toString());
                                int P09 = int.parse(snapshot.data[index].data["P09"].toString());
                                int P10 = int.parse(snapshot.data[index].data["P10"].toString());
                                int P11 = int.parse(snapshot.data[index].data["P11"].toString());
                                int P12 = int.parse(snapshot.data[index].data["P12"].toString());
                                int P13 = int.parse(snapshot.data[index].data["P13"].toString());
                                int P14 = int.parse(snapshot.data[index].data["P14"].toString());
                                int P15 = int.parse(snapshot.data[index].data["P15"].toString());
                                int P16 = int.parse(snapshot.data[index].data["P16"].toString());
                                int P17 = int.parse(snapshot.data[index].data["P17"].toString());
                                int P18 = int.parse(snapshot.data[index].data["P18"].toString());
                                int P19 = int.parse(snapshot.data[index].data["P19"].toString());
                                int P20 = int.parse(snapshot.data[index].data["P20"].toString());
                                int P21 = int.parse(snapshot.data[index].data["P21"].toString());
                                int P22 = int.parse(snapshot.data[index].data["P22"].toString());
                                int P23 = int.parse(snapshot.data[index].data["P23"].toString());
                                int P24 = int.parse(snapshot.data[index].data["P24"].toString());
                                int P25 = int.parse(snapshot.data[index].data["P25"].toString());
                                int P26 = int.parse(snapshot.data[index].data["P26"].toString());
                                int P27 = int.parse(snapshot.data[index].data["P27"].toString());
                                int P28 = int.parse(snapshot.data[index].data["P28"].toString());
                                int P29 = int.parse(snapshot.data[index].data["P29"].toString());
                                int P30 = int.parse(snapshot.data[index].data["P30"].toString());
                                int P31 = int.parse(snapshot.data[index].data["P31"].toString());
                                int P32 = int.parse(snapshot.data[index].data["P32"].toString());
                                int P33 = int.parse(snapshot.data[index].data["P33"].toString());
                                int P34 = int.parse(snapshot.data[index].data["P34"].toString());
                                int P35 = int.parse(snapshot.data[index].data["P35"].toString());
                                int P36 = int.parse(snapshot.data[index].data["P36"].toString());
                                int P37 = int.parse(snapshot.data[index].data["P37"].toString());
                                int P38 = int.parse(snapshot.data[index].data["P38"].toString());
                                int P39 = int.parse(snapshot.data[index].data["P39"].toString());
                                int P40 = int.parse(snapshot.data[index].data["P40"].toString());
                                int P41 = int.parse(snapshot.data[index].data["P41"].toString());
                                int P42 = int.parse(snapshot.data[index].data["P42"].toString());
                                int P43 = int.parse(snapshot.data[index].data["P43"].toString());
                                int P44 = int.parse(snapshot.data[index].data["P44"].toString());
                                int P45 = int.parse(snapshot.data[index].data["P45"].toString());
                                int P46 = int.parse(snapshot.data[index].data["P46"].toString());
                                int P47 = int.parse(snapshot.data[index].data["P47"].toString());
                                int P48 = int.parse(snapshot.data[index].data["P48"].toString());
                                int P49 = int.parse(snapshot.data[index].data["P49"].toString());
                                int P50 = int.parse(snapshot.data[index].data["P50"].toString());
                                int P51 = int.parse(snapshot.data[index].data["P51"].toString());
                                int P52 = int.parse(snapshot.data[index].data["P52"].toString());
                                int P53 = int.parse(snapshot.data[index].data["P53"].toString());
                                int P54 = int.parse(snapshot.data[index].data["P54"].toString());
                                int P55 = int.parse(snapshot.data[index].data["P55"].toString());
                                int P56 = int.parse(snapshot.data[index].data["P56"].toString());
                                int P57 = int.parse(snapshot.data[index].data["P57"].toString());
                                int P58 = int.parse(snapshot.data[index].data["P58"].toString());
                                int P59 = int.parse(snapshot.data[index].data["P59"].toString());
                                int P60 = int.parse(snapshot.data[index].data["P60"].toString());
                                int P61 = int.parse(snapshot.data[index].data["P61"].toString());
                                int P62 = int.parse(snapshot.data[index].data["P62"].toString());
                                int P63 = int.parse(snapshot.data[index].data["P63"].toString());
                                int P64 = int.parse(snapshot.data[index].data["P64"].toString());


                                _TotalAutoEstima =
                                (P01 + P06 + P17 + P25 +
                                    P32 + P37 + P42 + P50 +
                                    P58 + P64);
                                _TotalAnsiedade =
                                (P05 + P10 + P19 + P22 +
                                    P28 + P33 + P39 + P49 +
                                    P57 + P60);
                                _TotalStress =
                                (P07 + P16 + P23 + P24 +
                                    P31 + P38 + P51 + P59 +
                                    P61);
                                _TotalDispersao =
                                (P02 + P14 + P45 + P47 +
                                    P54 + P63);
                                _TotalHiperatividade =
                                (P04 + P12 + P18 + P34 +
                                    P35 + P48 + P52);
                                _TotalRelacionamentos =
                                (P09 + P11 + P20 + P27 +
                                    P40 + P43 + P56);
                                _TotalDepressao =
                                (P03 + P08 + P15 + P26 +
                                    P29 + P36 + P41 + P46 +
                                    P53 + P62);
                                _TotalLesao =
                                (P13 + P21 + P30 + P44 +
                                    P55);
                                setState(() {
                                  if (_TotalAutoEstima < 15) {_cv1 = _grey;}
                                  else if ((_TotalAutoEstima > 14) && (_TotalAutoEstima < 26)) {_cv1 = _yellow;}
                                  else if ((_TotalAutoEstima > 25) && (_TotalAutoEstima < 41)) {_cv1 = _green;};

                                  if (_TotalAnsiedade < 15) {_cv2 = _green;}
                                  else if ((_TotalAnsiedade > 14) && (_TotalAnsiedade < 26)) {_cv2 = _yellow;}
                                  else if ((_TotalAnsiedade > 25) && (_TotalAnsiedade < 41)) {_cv2 = _grey;};


                                  if (_TotalStress < 10) {_cv3 = _green;}
                                  else if ((_TotalStress > 9) && (_TotalStress < 27)) {_cv3 = _yellow;}
                                  else if ((_TotalStress > 26) && (_TotalStress < 37)) {_cv3 = _grey;};

                                  if (_TotalDispersao < 10) {_cv4 = _green;}
                                  else if ((_TotalDispersao > 9) && (_TotalDispersao < 18)) {_cv4 = _yellow;}
                                  else if ((_TotalDispersao > 17) && (_TotalDispersao < 25)) {_cv4 = _grey;};

                                  if (_TotalHiperatividade < 9) {_cv5 = _green;}
                                  else if ((_TotalHiperatividade > 8) && (_TotalHiperatividade < 20)) {_cv5 = _yellow;}
                                  else if ((_TotalHiperatividade > 19) && (_TotalHiperatividade < 29)) {_cv5 = _grey;};

                                  if (_TotalRelacionamentos < 9) {_cv6 = _green;}
                                  else if ((_TotalRelacionamentos > 8) && (_TotalRelacionamentos < 20)) {_cv6 = _yellow;}
                                  else if ((_TotalRelacionamentos > 19) && (_TotalRelacionamentos < 29)) {_cv6 = _grey;};

                                  if (_TotalDepressao < 15) {_cv7 = _green;}
                                  else if ((_TotalDepressao > 14) && (_TotalDepressao < 26)) {_cv7 = _yellow;}
                                  else if ((_TotalDepressao > 25) && (_TotalDepressao < 41)) {_cv7 = _grey;};

                                  if (_TotalLesao < 6) {_cv8 = _green;}
                                  else if ((_TotalLesao > 5) && (_TotalLesao < 11)) {_cv8 = _yellow;}
                                  else if ((_TotalLesao > 10) && (_TotalLesao < 21)) {_cv8 = _grey;};

                                });
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Graficos ("001",
                                                _TotalAutoEstima,_cv1,_TotalAnsiedade,
                                                _cv2,_TotalStress,
                                                _cv3,_TotalDispersao,
                                                _cv4,_TotalHiperatividade,
                                                _cv5,_TotalRelacionamentos,
                                                _cv6,_TotalDepressao,_cv7,
                                                _TotalLesao,_cv8)));
                              }
                              else if (snapshot.data[index].data["Teste-Code"] == "DI") {
                                int valD = snapshot.data[index].data["valD"];
                                int valI = snapshot.data[index].data["valI"];
                                int valS = snapshot.data[index].data["valS"];
                                int valC = snapshot.data[index].data["valC"];
                                int valantesD = snapshot.data[index].data["valantesD"];
                                int valantesI = snapshot.data[index].data["valantesI"];
                                int valantesS = snapshot.data[index].data["valantesS"];
                                int valantesC = snapshot.data[index].data["valantesC"];

                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ResultadoDisc ("001",
                                                valD,
                                                valI,
                                                valS,
                                                valC,
                                                valantesD,
                                                valantesI,
                                                valantesS,
                                                valantesC)));

                              }
                            },

                            // onTap: () => navigateToDetail(snapshot.data[index])
                          )
                      );

                    }

                );
              }
            }
        )
    );
  }
}
//
class DetailPage extends StatefulWidget {

  final DocumentSnapshot post;
  DetailPage({this.post});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          title: Text(widget.post.data["nome"]),
          subtitle: Text(widget.post.data["Teste"]),

        ),
      ),
    );
  }
}
