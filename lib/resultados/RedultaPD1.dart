import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;


import '../Home.dart';
import '../HomeAdm.dart';
import 'ResultadosAdm.dart';

class ResultaPD1 extends StatefulWidget {
  String _codAluno;
  int percepcao_deducao;
  int p01;
  int p02;
  int p03;
  int p04;
  int p05;
  int p06;
  int p07;
  int p08;
  int p09;
  int p10;
  int p11;
  int p12;
  int p13;
  int p14;
  int p15;
  int p16;
  int p17;
  int p18;
  int p19;
  int p20;
  int p21;
  int p22;
  int p23;
  int p24;
  int p25;
  int p26;
  //


  ResultaPD1(this._codAluno,
      this.percepcao_deducao,
      this.p01,
      this.p02,
      this.p03,
      this.p04,
      this.p05,
      this.p06,
      this.p07,
      this.p08,
      this.p09,
      this.p10,
      this.p11,
      this.p12,
      this.p13,
      this.p14,
      this.p15,
      this.p16,
      this.p17,
      this.p18,
      this.p19,
      this.p20,
      this.p21,
      this.p22,
      this.p23,
      this.p24,
      this.p25,
      this.p26
      );

  _ResultaPD1State createState() => _ResultaPD1State();

}

class _ResultaPD1State extends State<ResultaPD1> {
  List<charts.Series<Resultados, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  //
  int r01 = 1;
  int r02 = 1;
  int r03 = 3;
  int r04 = 4;
  int r05 = 1;
  int r06 = 2;
  int r07 = 2;
  int r08 = 2;
  int r09 = 3;
  int r10 = 4;
  int r11 = 1;
  int r12 = 1;
  int r13 = 4;
  int r14 = 4;
  int r15 = 4;
  int r16 = 3;
  int r17 = 2;
  int r18 = 2;
  int r19 = 2;
  int r20 = 1;
  int r21 = 4;
  int r22 = 3;
  int r23 = 1;
  int r24 = 4;
  int r25 = 3;
  int r26 = 2;


  _generateData() async {
    var data1 = [
      new Resultados(1, 'Percepção Dedução', widget.percepcao_deducao, _cv1),
    ];

    var piedata = [

      new Task('Dominância', 30.1, Color(0xff109618)),
      new Task('Influência', 19.9, Color(0xfffdbe19)),
      new Task('Estabilidade', 32.2, Color(0xffff9900)),
      new Task('Conformidade', 17.8, Color(0xffdc3912)),
    ];



    _seriesData.add(
      charts.Series(
        domainFn: (Resultados Resultados, _) => Resultados.place,
        measureFn: (Resultados Resultados, _) => Resultados.quantity,
        id: 'diag',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Resultados Resultados, _) =>
            charts.ColorUtil.fromDartColor(Resultados.cor),
      ),

    );


    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Resultados',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );


  }
  _iniciaDb() {
    if ((widget.percepcao_deducao > 0 ) && (widget.percepcao_deducao < 3 )) {_cv1 = Colors.red;}
    else if ((widget.percepcao_deducao > 2) && (widget.percepcao_deducao < 6)) {_cv1 = Colors.deepOrange;}
    else if ((widget.percepcao_deducao > 5) && (widget.percepcao_deducao < 8)) {_cv1 = Colors.deepOrangeAccent;}
    else if ((widget.percepcao_deducao > 7 ) && (widget.percepcao_deducao < 11)) {_cv1 = Colors.orange;}
    else if ((widget.percepcao_deducao > 10 ) && (widget.percepcao_deducao < 13)) {_cv1 = Colors.yellowAccent;}
    else if ((widget.percepcao_deducao > 12 ) && (widget.percepcao_deducao < 15)) {_cv1 = Colors.yellowAccent;}
    else if ((widget.percepcao_deducao > 14 ) && (widget.percepcao_deducao < 18)) {_cv1 = Colors.limeAccent;}
    else if ((widget.percepcao_deducao > 17 ) && (widget.percepcao_deducao < 20)) {_cv1 = Colors.lime;}
    else if ((widget.percepcao_deducao > 19 ) && (widget.percepcao_deducao < 23)) {_cv1 = Colors.lightGreenAccent;}
    else if ((widget.percepcao_deducao > 22)) {_cv1 = Colors.green;}

  }

  String _textoAutoEstima =
      "De fato, a autoestima extremamente alta pode ser um sinal de desajuste. Todos nós conhecemos pessoas que pensam que são mais seres humanos maravilhosos vivos, mesmo que suas falhas e limitações são óbvios para todos que se preocupam em dar um olhar superficial. \n \n" +
          "Às vezes chamado de alta autoestima defensiva, as pessoas com esta qualidade parecem ser capazes de colocar um giro positivo em mesmo os piores fracassos. Parece ser o caso de que as pessoas com moderadamente alta autoestima são os mais bem ajustados. Eles geralmente sentem bom sobre si mesmos, mas eles são capazes de reconhecer suas falhas e fazer algo sobre eles.\n\n "+
          "Agora que eu desabafei minhas frustrações sobre a visão de que todas crianças devem ser elogiados incondicionalmente, deixe-me dizer que eu viram um número de clientes que sofreram terrivelmente de pobres autoestima. Talvez um dos exemplos mais pungentes foi um \n "+
          "Estudante de pós-graduação eu vou chamar Doug. Ele sofria de ansiedade intensa e depressão, mesmo que sua vida estivesse indo muito bem. Doug tinha tido uma carreira acadêmica bem sucedida, foi casado com uma mulher que o amava, e era um pai, doting. No entanto, ele era incapaz de articular qualquer coisa boa sobre si mesmo. Durante um sessão de terapia, eu disse a ele que eu não estava indo mais longe até que ele pudesse dizer uma coisa positiva sobre si mesmo. Ele passou cinco minutos agitados mulling sobre possibilidades antes que ele disse: \n" +
          "Eu costumava tocar bem  piano. Quando eu disse a ele que ele tinha que me dizer algo bom sobre si mesmo no presente, ele estava completamente perplexo. Eu finalmente cedeu e pediu-lhe para me dizer o que sua esposa diria sobre suas boas qualidades. Ele foi capaz de listar várias qualidades que ela apontaria para, mas depois imediatamente descartou-os como não confiáveis. Afinal, a esposa de Doug amava-o e, consequentemente, ela poderia não ser objetivo. Assim como pessoas com alta autoestima defensiva não pode reconhecer qualquer informação negativa sobre si mesmos, pessoas como Doug não pode reconhecer nada positivo sobre si. \n\n"+
          "Se você marcou abaixo do percentil 30 na Autoestima Escala de classificação, você, sem dúvida, merece se sentir melhor consigo mesmo. Eu não acredito que as pessoas devem ter inequivocamente positivo sentimentos sobre si mesmos, mas eu acredito que quase todo mundo merece se sentir geralmente bem sobre o tipo de pessoa eles são. A primeira evidência que você merece sentir melhor sobre si mesmo é que você está lendo essas palavras. Isso significa que você se importa em se tornar uma pessoa melhor, e você se preocupam com a forma como os outros reagem a você. E pessoas com autoesteem modesto muitas vezes fazem amigos carinhosos e leais. Porque eles estão convencidos de suas próprias inadequações, eles estão mais do que felizes em mudar o foco da atenção longe de si mesmos para aqueles em torno deles. A menos que sua pobre autoestima tenha feito você cortar se fora dos outros completamente, você provavelmente tem vários pessoas em sua vida que se preocupam com você e valorizar o tempo que eles gastar com você. Isso só mostra que você tem razão para se sentir bem sobre você mesmo. "+
          "Uma segunda chave para se sentir melhor sobre si mesmo é aceitar que você não precisa ser perfeito para se sentir bem consigo mesmo. "+
          "Pobre autoestima foi uma das minhas lutas quando eu estava mais jovem, e esta foi uma lição que eu aprendi apenas com o tempo. Não, eu tinha. para admitir, eu não era brilhante, mas eu vim a aceitar que eu era inteligente o suficiente para obter um Ph.D. e para fazer o meu trabalho razoavelmente bem. Não, eu estava. não um clone Robert Redford, mas eu estava apresentável o suficiente para seduzir uma mulher atraente e vivaz para se casar comigo. E não, eu estava. não o cara mais extrovertido e divertido ao redor, mas eu era interessante o suficiente para desenvolver um círculo valorizado de amigos. "+
          "Levei muitos anos até me sentir geralmente confortável com mim mesmo, mas você pode acelerar o processo fazendo um concertado" ;
//

  // Ansiedade

  double _valorpercepcaodeducao (double d) => d;

  Color _red = Colors.red;
  Color _orange = Colors.deepOrangeAccent;
  Color _yellow = Colors.yellow;
  Color _lime = Colors.lightGreenAccent;
  Color _green = Colors.green;
  //
  double fontnumber = 16.0;
  //
  @override
  void initState() {
    setState(() {
      _iniciaDb();
      _valorpercepcaodeducao(widget.percepcao_deducao.toDouble());
    });
    super.initState();
    _seriesData = List<charts.Series<Resultados, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    _seriesLineData = List<charts.Series<Sales, int>>();

    _generateData();
  }

  Color _cv1 = Colors.grey;


  @override
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;
//

    double  w20p = widthlua *  0.20;

    double  font_adj =  (widthlua > 1600) ? 20 :
    (widthlua > 1500)  ?  20 :
    (widthlua > 1400)  ?  17 :
    (widthlua > 1300)  ?  18 :
    (widthlua > 1200)  ?  18 :
    (widthlua > 1100)  ?  17 :
    (widthlua > 1000)  ?  17 :
    (widthlua > 900)  ?  12 :
    (widthlua > 800)  ?  10 :
    (widthlua > 700)  ?  10 :
    (widthlua > 600)  ?  9 :
    (widthlua > 500)  ?  9 :  8 ;
    //
    double  h10p = heightlua * 0.081;
    double  hespace = heightlua * 0.04;
//
    String  resp01 = "RESPOSTA-01\n"+ (widget.p01 == 1 ? "Resp = a " : widget.p01 == 2 ? "Resp = b " : widget.p01 == 3 ? "Resp = c " : widget.p01 == 4 ? "Resp = d " : "" ) + "Correto = a";
    String  resp02 = "RESPOSTA-02\n"+ (widget.p02 == 1 ? "Resp = a " : widget.p02 == 2 ? "Resp = b " : widget.p02 == 3 ? "Resp = c " : widget.p02 == 4 ? "Resp = d " : "" ) + "Correto = a";
    String  resp03 = "RESPOSTA-03\n"+ (widget.p03 == 1 ? "Resp = a " : widget.p03 == 2 ? "Resp = b " : widget.p03 == 3 ? "Resp = c " : widget.p03 == 4 ? "Resp = d " : "" ) + "Correto = c";
    String  resp04 = "RESPOSTA-04\n"+ (widget.p04 == 1 ? "Resp = a " : widget.p04 == 2 ? "Resp = b " : widget.p04 == 3 ? "Resp = c " : widget.p04 == 4 ? "Resp = d " : "" ) + "Correto = d";
    String  resp05 = "RESPOSTA-05\n"+ (widget.p05 == 1 ? "Resp = a " : widget.p05 == 2 ? "Resp = b " : widget.p05 == 3 ? "Resp = c " : widget.p05 == 4 ? "Resp = d " : "" ) + "Correto = a";
    String  resp06 = "RESPOSTA-06\n"+ (widget.p06 == 1 ? "Resp = a " : widget.p06 == 2 ? "Resp = b " : widget.p06 == 3 ? "Resp = c " : widget.p06 == 4 ? "Resp = d " : "" ) + "Correto = b";
    String  resp07 = "RESPOSTA-07\n"+ (widget.p07 == 1 ? "Resp = a " : widget.p07 == 2 ? "Resp = b " : widget.p07 == 3 ? "Resp = c " : widget.p07 == 4 ? "Resp = d " : "" ) + "Correto = b";
    String  resp08 = "RESPOSTA-08\n"+ (widget.p08 == 1 ? "Resp = a " : widget.p08 == 2 ? "Resp = b " : widget.p08 == 3 ? "Resp = c " : widget.p08 == 4 ? "Resp = d " : "" ) + "Correto = b";
    String  resp09 = "RESPOSTA-09\n"+ (widget.p09 == 1 ? "Resp = a " : widget.p09 == 2 ? "Resp = b " : widget.p09 == 3 ? "Resp = c " : widget.p09 == 4 ? "Resp = d " : "" ) + "Correto = c";
    String  resp10 = "RESPOSTA-10\n"+ (widget.p10 == 1 ? "Resp = a " : widget.p10 == 2 ? "Resp = b " : widget.p10 == 3 ? "Resp = c " : widget.p09 == 4 ? "Resp = d " : "" ) + "Correto = d";
    String  resp11 = "RESPOSTA-11\n"+ (widget.p11 == 1 ? "Resp = a " : widget.p11 == 2 ? "Resp = b " : widget.p11 == 3 ? "Resp = c " : widget.p11 == 4 ? "Resp = d " : "" ) + "Correto = a";
    String  resp12 = "RESPOSTA-12\n"+ (widget.p12 == 1 ? "Resp = a " : widget.p12 == 2 ? "Resp = b " : widget.p12 == 3 ? "Resp = c " : widget.p12 == 4 ? "Resp = d " : "" ) + "Correto = a";
    String  resp13 = "RESPOSTA-13\n"+ (widget.p13 == 1 ? "Resp = a " : widget.p13 == 2 ? "Resp = b " : widget.p13 == 3 ? "Resp = c " : widget.p13 == 4 ? "Resp = d " : "" ) + "Correto = d";
    String  resp14 = "RESPOSTA-14\n"+ (widget.p14 == 1 ? "Resp = a " : widget.p14 == 2 ? "Resp = b " : widget.p14 == 3 ? "Resp = c " : widget.p14 == 4 ? "Resp = d " : "" ) + "Correto = d";
    String  resp15 = "RESPOSTA-15\n"+ (widget.p15 == 1 ? "Resp = a " : widget.p15 == 2 ? "Resp = b " : widget.p15 == 3 ? "Resp = c " : widget.p15 == 4 ? "Resp = d " : "" ) + "Correto = d";
    String  resp16 = "RESPOSTA-16\n"+ (widget.p16 == 1 ? "Resp = a " : widget.p16 == 2 ? "Resp = b " : widget.p16 == 3 ? "Resp = c " : widget.p16 == 4 ? "Resp = d " : "" ) + "Correto = c";
    String  resp17 = "RESPOSTA-17\n"+ (widget.p17 == 1 ? "Resp = a " : widget.p17 == 2 ? "Resp = b " : widget.p17 == 3 ? "Resp = c " : widget.p17 == 4 ? "Resp = d " : "" ) + "Correto = b";
    String  resp18 = "RESPOSTA-18\n"+ (widget.p18 == 1 ? "Resp = a " : widget.p18 == 2 ? "Resp = b " : widget.p18 == 3 ? "Resp = c " : widget.p18 == 4 ? "Resp = d " : "" ) + "Correto = b";
    String  resp19 = "RESPOSTA-19\n"+ (widget.p19 == 1 ? "Resp = a " : widget.p19 == 2 ? "Resp = b " : widget.p19 == 3 ? "Resp = c " : widget.p19 == 4 ? "Resp = d " : "" ) + "Correto = b";
    String  resp20 = "RESPOSTA-20\n"+ (widget.p20 == 1 ? "Resp = a " : widget.p20 == 2 ? "Resp = b " : widget.p20 == 3 ? "Resp = c " : widget.p20 == 4 ? "Resp = d " : "" ) + "Correto = c";
    String  resp21 = "RESPOSTA-21\n"+ (widget.p21 == 1 ? "Resp = a " : widget.p21 == 2 ? "Resp = b " : widget.p21 == 3 ? "Resp = c " : widget.p21 == 4 ? "Resp = d " : "" ) + "Correto = d";
    String  resp22 = "RESPOSTA-22\n"+ (widget.p22 == 1 ? "Resp = a " : widget.p22 == 2 ? "Resp = b " : widget.p22 == 3 ? "Resp = c " : widget.p22 == 4 ? "Resp = d " : "" ) + "Correto = c";
    String  resp23 = "RESPOSTA-23\n"+ (widget.p23 == 1 ? "Resp = a " : widget.p23 == 2 ? "Resp = b " : widget.p23 == 3 ? "Resp = c " : widget.p23 == 4 ? "Resp = d " : "" ) + "Correto = a";
    String  resp24 = "RESPOSTA-24\n"+ (widget.p24 == 1 ? "Resp = a " : widget.p24 == 2 ? "Resp = b " : widget.p24 == 3 ? "Resp = c " : widget.p24 == 4 ? "Resp = d " : "" ) + "Correto = d";
    String  resp25 = "RESPOSTA-25\n"+ (widget.p25 == 1 ? "Resp = a " : widget.p25 == 2 ? "Resp = b " : widget.p25 == 3 ? "Resp = c " : widget.p25 == 4 ? "Resp = d " : "" ) + "Correto = c";
    String  resp26 = "RESPOSTA-26\n"+ (widget.p26 == 1 ? "Resp = a " : widget.p26 == 2 ? "Resp = b " : widget.p26 == 3 ? "Resp = c " : widget.p26 == 4 ? "Resp = d " : "" ) + "Correto = b";


    //
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Wop3 - Desenvolvimento Humano"),
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
                                  ResultadosAdm(widget._codAluno)));
                    },
                  )
                ],
              ),
            ),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(icon: Icon(FontAwesomeIcons.solidChartBar),),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),

              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Dedução de Percepção',
                          style: TextStyle(fontSize: 10.0,
                              fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            vertical: false,
                            barGroupingType: charts.BarGroupingType.stacked,
                            animationDuration: Duration(seconds: 3),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          alignment: Alignment.centerLeft,
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
                                        builder: (context) => ResultadosAdm(widget._codAluno)
                                    ));
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                    child: ListView(
                      children: <Widget>[
                        SizedBox(
                          width: 40,
                          height: 40,
                              child: Image.asset("images/logo.png"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 200,
                          child:SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p01 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp01,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p02 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp02,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p03 == 3 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp03,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p04 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp04,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    SizedBox(width:hespace),
                                    //
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p05 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp05,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p06 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp06,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p07 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp07,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p08 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp08,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    SizedBox(width:hespace),
                                    //
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p09 == 3 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp09,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p10 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp10,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p11 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp11,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p12 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp12,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    SizedBox(width:hespace),
                                    //
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p13 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp13,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p14 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp14,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p15 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp15,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p16 == 3 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp16,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    SizedBox(width:hespace),
                                    //
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p17 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp17,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p18 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp18,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p19 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp19,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p20 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp20,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    SizedBox(width:hespace),
                                    //
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p21 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp21,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p22 == 3 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp22,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p23 == 1 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp23,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p24 == 4 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp24,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(height: 5)]),
                                    SizedBox(width:hespace),
                                    //
                                    Row(
                                        children: <Widget>[
                                          SizedBox(width: 15),
                                          SizedBox(width: w20p),
                                          SizedBox(width: 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p25 == 3 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp25,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),
                                          AnimatedContainer(
                                            //  padding: EdgeInsets.only(top : padbox),
                                              width: w20p,
                                              height: h10p,
                                              decoration: BoxDecoration(
                                                color: widget.p26 == 2 ? Colors.green: Colors.red,
                                                borderRadius: _bR,
                                              ),
                                              alignment: Alignment.center,
                                              duration: Duration(seconds: 3),
                                              curve: Curves.fastLinearToSlowEaseIn,
                                              child:
                                              Text(resp26,textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: font_adj,
                                                    color: Colors.black ,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              )
                                          ),
                                          SizedBox(width : 15),

                                          ]),
                                    SizedBox(width:hespace),

                                  ]
                              )
                            //
                            //
                            //
                            //
                          ),
                          //
                          //
                          //
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          alignment: Alignment.center,
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
                                Navigator.pushNamed(
                                    context, "/Home");
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class Resultados {
  String place;
  int year;
  int quantity;
  Color cor;

  Resultados(this.year, this.place, this.quantity, this.cor);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}