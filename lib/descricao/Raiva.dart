
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wop3desenvolvimento_app/testes/P01.dart';
import 'package:wop3desenvolvimento_app/testes/P13.dart';






class Raiva extends StatefulWidget {
  String _codAluno;
  Raiva(this._codAluno);
  @override
  _RaivaState createState() => _RaivaState();
}

class _RaivaState extends State<Raiva> {

  @override
  void initState() {
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;
    bool portrait = (widthlua > heightlua ? false: true);
    double  fatortitle    = portrait ? (heightlua  /40) : (heightlua  / 25);
    double  contasizeh    = portrait ? (heightlua  / 6) : (heightlua  / 5);

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

    return Scaffold(
        body: Container(
            color: Colors.black,
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child:
                Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: contasizeh - 30 ,
                            color: Colors.black,

                            child:
                            portrait ?
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Text(
                                    "WOP3 - DESENVOLVIMENTO HUMANO v_1.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fatortitle
                                    ))
                              ],
                            )
                                :
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Text(
                                    "WOP3 - DESENVOLVIMENTO HUMANO v_1.00",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: fatortitle
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 00),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[

                                Container(
                                  color: Colors.black,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      SizedBox(
                                        height: portrait? contasizeh/ 1.6 : contasizeh,
                                        child: Image.asset("images/logo.png",) ,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                SizedBox(
                                    width: widthlua-30,
                                  child: Text(
                                  "Todo mundo fica com raiva de vez em quando." +
                                  " Uma s??rie de declara????es que as pessoas t??m usado para descrever as vezes que eles ficaram com raiva s??o inclu??dos abaixo. "+
                                  "Use as diretrizes abaixo para indicar o qu??o bem cada uma das seguintes declara????es descreve voc??. Por favor, responda. cada item."+
                                  "\n\nCompletamente verdadeiro"+
                                  "\nParcialmente verdadeiro"+
                                  "\nParcialmente falso/parcialmente verdadeiro"+
                                  "\nParcialmente falso"+
                                  "\nCompletamente falso"+
                                   "N??o h?? tempo para responder, procure n??o pensar muito nas respostas, use o pensamento que primeiro ocorrer.\n\n A cor de fundo da tela mudara de cor a cada 10 segundos, apenas como refer??ncia.",

                                      style: TextStyle(
                                        fontSize: font_adj ,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    )
                                ),
                                SizedBox(height: 20),

                                Padding(
                                  padding: EdgeInsets.only(
                                      left : widthlua > 1200 ? 300: widthlua > 1000 ? 150: widthlua > 800 ? 100: 0,
                                      right: widthlua > 1200 ? 300: widthlua > 1000 ? 150: widthlua > 800 ? 100: 0,
                                      top: 2,
                                      bottom: 10),
                                  child: RaisedButton(
                                      child: Text(
                                        "Come??ar",
                                        style: TextStyle(color: Colors.white, fontSize: 20),
                                      ),
                                      color: Colors.pink,
                                      padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(32)
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                            builder: (context) => P13(widget._codAluno)));

                                      }),
                                ),
                                //


                              ],
                            ),
                          )
                      )]))

        ));
  }
}
