import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  var _frases=[
    "Nenhum obstáculo será grande se a sua vontade de vencer for maior.",
    "Dificuldades preparam pessoas comuns para destinos extraordinários.",
    "Ouse ir além, ouse fazer diferente e o poder lhe será dado!.",
    "No fim tudo dá certo, e se não deu certo é porque ainda não chegou ao fim."
  ];

  void _gerarFrase(){

    var _numeroAleatorio = Random().nextInt(4);

    setState(() {
      _fraseGerada = _frases[_numeroAleatorio];
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia!"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
                onPressed:(){
                  setState(() {
                    _gerarFrase();
                  });
                },
                child: Text(
                    "Nova Frase",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}