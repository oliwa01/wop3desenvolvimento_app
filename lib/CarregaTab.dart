import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class CarregaTab extends StatefulWidget {
  @override
  _CarregaTabState createState() => _CarregaTabState();
}

class _CarregaTabState extends State<CarregaTab> {
  Firestore db = Firestore.instance;
  void _gravaDb () {

    db.collection("aluno").document('002').setData(

    {
      "nome" : "Antonio Sergio",
      "email" : "antonio.sergio@preventsenior.com.br",
      "idade" : "40",
      "t01" : false , "t02" : false , "t03" : false , "t04" : false , "t05" : false , "t06" : false , "t07" : false , "t08" : false , "t09" : false , "t10" : false ,
      "t11" : false ,  "t12" : false , "t13" : false , "t14" : false , "t15" : false , "t16" : false , "t17" : false , "t18" : false , "t19" : false , "t20" : false ,
      "t21" : false ,  "t22" : false ,  "t23" : false ,  "t24" : false ,  "t25" : false , "t26" : false , "t27" : false , "t28" : false , "t29" : false ,  "t30" : false ,
      "e01" : false ,  "e02" : false ,  "e03" : false , "e04" : false , "e05" : false , "e06" : false , "e07" : false , "e08" : false , "e09" : false , "e10" : false ,
      "e11" : false , "e12" : false , "e13" : false , "e14" : false ,  "e15" : false ,  "e16" : false , "e17" : false , "e18" : false ,  "e19" : false ,  "e20" : false ,
      "e21" : false , "e22" : false , "e23" : false , "e24" : false ,  "e25" : false ,  "e26" : false , "e27" : false , "e28" : false ,  "e29" : false , "e30" : false,
      "f01" : false ,  "f02" : false ,  "f03" : false , "f04" : false , "f05" : false , "f06" : false , "f07" : false , "f08" : false , "f09" : false , "f10" : false ,
      "f11" : false , "f12" : false , "f13" : false , "f14" : false ,  "f15" : false ,  "f16" : false , "f17" : false , "f18" : false ,  "f19" : false ,  "f20" : false ,
      "f21" : false , "f22" : false , "f23" : false , "f24" : false ,  "f25" : false ,  "f26" : false , "f27" : false , "f28" : false ,  "f29" : false , "f30" : false
    }
    //

    );}
  void _gravaDb1 () {

    db.collection("aluno").document('003').setData(

        {
          "nome" : "Gerson Angelo",
          "email" : "gerson.angelo@preventsenior.com.br",
          "idade" : "40",
          "t01" : false , "t02" : false , "t03" : false , "t04" : false , "t05" : false , "t06" : false , "t07" : false , "t08" : false , "t09" : false , "t10" : false ,
          "t11" : false ,  "t12" : false , "t13" : false , "t14" : false , "t15" : false , "t16" : false , "t17" : false , "t18" : false , "t19" : false , "t20" : false ,
          "t21" : false ,  "t22" : false ,  "t23" : false ,  "t24" : false ,  "t25" : false , "t26" : false , "t27" : false , "t28" : false , "t29" : false ,  "t30" : false ,
          "e01" : false ,  "e02" : false ,  "e03" : false , "e04" : false , "e05" : false , "e06" : false , "e07" : false , "e08" : false , "e09" : false , "e10" : false ,
          "e11" : false , "e12" : false , "e13" : false , "e14" : false ,  "e15" : false ,  "e16" : false , "e17" : false , "e18" : false ,  "e19" : false ,  "e20" : false ,
          "e21" : false , "e22" : false , "e23" : false , "e24" : false ,  "e25" : false ,  "e26" : false , "e27" : false , "e28" : false ,  "e29" : false , "e30" : false,
          "f01" : false ,  "f02" : false ,  "f03" : false , "f04" : false , "f05" : false , "f06" : false , "f07" : false , "f08" : false , "f09" : false , "f10" : false ,
          "f11" : false , "f12" : false , "f13" : false , "f14" : false ,  "f15" : false ,  "f16" : false , "f17" : false , "f18" : false ,  "f19" : false ,  "f20" : false ,
          "f21" : false , "f22" : false , "f23" : false , "f24" : false ,  "f25" : false ,  "f26" : false , "f27" : false , "f28" : false ,  "f29" : false , "f30" : false

        }
      //

    );}
  void _gravaDb2 () {

    db.collection("aluno").document('004').setData(

        {
          "nome" : "Gerson Ramos",
          "email" : "g.ramosalmeida@ig.com.br",
          "idade" : "50",
          "t01" : false , "t02" : false , "t03" : false , "t04" : false , "t05" : false , "t06" : false , "t07" : false , "t08" : false , "t09" : false , "t10" : false ,
          "t11" : false ,  "t12" : false , "t13" : false , "t14" : false , "t15" : false , "t16" : false , "t17" : false , "t18" : false , "t19" : false , "t20" : false ,
          "t21" : false ,  "t22" : false ,  "t23" : false ,  "t24" : false ,  "t25" : false , "t26" : false , "t27" : false , "t28" : false , "t29" : false ,  "t30" : false ,
          "e01" : false ,  "e02" : false ,  "e03" : false , "e04" : false , "e05" : false , "e06" : false , "e07" : false , "e08" : false , "e09" : false , "e10" : false ,
          "e11" : false , "e12" : false , "e13" : false , "e14" : false ,  "e15" : false ,  "e16" : false , "e17" : false , "e18" : false ,  "e19" : false ,  "e20" : false ,
          "e21" : false , "e22" : false , "e23" : false , "e24" : false ,  "e25" : false ,  "e26" : false , "e27" : false , "e28" : false ,  "e29" : false , "e30" : false,
          "f01" : false ,  "f02" : false ,  "f03" : false , "f04" : false , "f05" : false , "f06" : false , "f07" : false , "f08" : false , "f09" : false , "f10" : false ,
          "f11" : false , "f12" : false , "f13" : false , "f14" : false ,  "f15" : false ,  "f16" : false , "f17" : false , "f18" : false ,  "f19" : false ,  "f20" : false ,
          "f21" : false , "f22" : false , "f23" : false , "f24" : false ,  "f25" : false ,  "f26" : false , "f27" : false , "f28" : false ,  "f29" : false , "f30" : false


        }
      //

    );}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(children: <Widget>[
              GestureDetector (

                  onTap:() {
                  _gravaDb();
                  _gravaDb1();
                  _gravaDb2();
                      },
                  child:
                  AnimatedContainer(
                      padding: EdgeInsets.only(top : 10),
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.red,
                                       ),
                      alignment: AlignmentDirectional.topCenter,
                      duration: Duration(seconds: 3),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child:
                      Text("gerar",
                        style: TextStyle(
                            fontSize: 44,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ))
            ],)
          ],
        )
    );
  }
}
