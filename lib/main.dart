import 'package:flutter/material.dart';
import 'package:wop3desenvolvimento_app/CarregaTab.dart';
import 'package:wop3desenvolvimento_app/DISC/GeraAdjetivo.dart';
import 'package:wop3desenvolvimento_app/DISC/GeraTabelaCodigoAumentaria.dart';
import 'package:wop3desenvolvimento_app/DISC/GeraTabelaCodigos.dart';
import 'package:wop3desenvolvimento_app/DISC/GeraTabelaPadrao.dart';
import 'package:wop3desenvolvimento_app/criadb.dart';
import 'package:wop3desenvolvimento_app/descricao/AutoEstima.dart';
import 'package:wop3desenvolvimento_app/resultados/RESULTADOS.dart';
import 'package:wop3desenvolvimento_app/resultados/Resultado_P01.dart';
import 'package:wop3desenvolvimento_app/resultados/ResultadosTM.dart';
import 'package:wop3desenvolvimento_app/testes/P01.dart';
import 'package:wop3desenvolvimento_app/testes/P02.dart';
import 'package:wop3desenvolvimento_app/testes/P03.dart';
import 'package:wop3desenvolvimento_app/testes/P04.dart';
import 'package:wop3desenvolvimento_app/testes/P05.dart';
import 'package:wop3desenvolvimento_app/testes/P06.dart';
import 'package:wop3desenvolvimento_app/testes/P07.dart';
import 'package:wop3desenvolvimento_app/testes/P08.dart';
import 'package:wop3desenvolvimento_app/testes/P09.dart';
import 'package:wop3desenvolvimento_app/testes/P10.dart';
import 'package:wop3desenvolvimento_app/testes/P11.dart';
import 'package:wop3desenvolvimento_app/testes/P12.dart';
import 'package:wop3desenvolvimento_app/testes/P13.dart';
import 'package:wop3desenvolvimento_app/testes/P14.dart';
import 'package:wop3desenvolvimento_app/testes/P15.dart';
import 'package:wop3desenvolvimento_app/testes/P16.dart';
import 'package:wop3desenvolvimento_app/testes/P17.dart';
import 'package:wop3desenvolvimento_app/testes/P18.dart';
import 'package:wop3desenvolvimento_app/testes/P19.dart';
import 'package:wop3desenvolvimento_app/testes/P20.dart';
import 'package:wop3desenvolvimento_app/testes/P21.dart';
import 'package:wop3desenvolvimento_app/testes/P22.dart';
import 'package:wop3desenvolvimento_app/testes/P23.dart';
import 'package:wop3desenvolvimento_app/testes/P24.dart';
import 'package:wop3desenvolvimento_app/testes/P25.dart';
import 'package:wop3desenvolvimento_app/testes/P26.dart';
import 'package:wop3desenvolvimento_app/testes/P27.dart';
import 'package:wop3desenvolvimento_app/testes/P28.dart';

import 'DISC/disc.dart';
import 'Home.dart';
import 'Login.dart';
import 'graficos/Graficos.dart';


void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/Disc" : (context) => Disc("001"),
        "/AutoEstima" : (context) => AutoEstima("001"),
        "/P01" : (context) => P01("001"),
        "/P02" : (context) => P02("001"),
        "/P03" : (context) => P03("001"),
        "/P04" : (context) => P04("001"),
        "/P05" : (context) => P05("001"),
        "/P06" : (context) => P06("001"),
        "/P07" : (context) => P07("001"),
        "/P08" : (context) => P08("001"),
        "/P09" : (context) => P09("001"),
        "/P10" : (context) => P10("001"),
        "/P11" : (context) => P11("001"),
        "/P12" : (context) => P12("001"),
        "/P13" : (context) => P13("001"),
        "/P14" : (context) => P14("001"),
        "/P15" : (context) => P15("001"),
        "/P16" : (context) => P16("001"),
        "/P17" : (context) => P17("001"),
        "/P18" : (context) => P18("001"),
        "/P19" : (context) => P19("001"),
        "/P20" : (context) => P20("001"),
        "/P21" : (context) => P21("001"),
        "/P22" : (context) => P22("001"),
        "/P23" : (context) => P23("001"),
        "/P24" : (context) => P24("001"),
        "/P25" : (context) => P25("001"),
        "/P26" : (context) => P26("001"),
        "/P27" : (context) => P27("001"),
        "/P28" : (context) => P28("001"),


        "/RESULTADOS" : (context) => RESULTADOS("001",1,2,3,4,5,6,7,8),
        "/ResultadosTM" : (context) => ResultadosTM("001",1,2,3,4,5,6,7,8,0,0,0,0),
        "/Graficos" : (context) => Graficos("001",0,Colors.red,1,Colors.red,2,Colors.red,3,Colors.red,4,Colors.red,5,Colors.red,6,Colors.red,7,Colors.red)
      },
      theme: ThemeData(
        primaryColor: Color(0xffff6101),
      ),
      home:  HomeDesktop()
     // home:  CarregaTab()
    ));




