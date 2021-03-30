import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(), //rota
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _titulo = "Frases do Dia";
  var _txtBtn = "Gerar Frase!";

  var _frases = [
    "A persistência é o caminho do êxito.",
    "As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.",
    "Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer.",
    "Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação.",
    "No meio da dificuldade encontra-se a oportunidade.",
    "Lute. Acredite. Conquiste. Perca. Deseje. Espere. Alcance. Invada. Caia. Seja tudo o quiser ser, mas acima de tudo, seja você sempre.",
    "Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação.",
    "A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento.",
    "Pedras no caminho? Eu guardo todas. Um dia vou construir um castelo.",
    "É parte da cura o desejo de ser curado.",
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.",
    "O que me preocupa não é o grito dos maus. É o silêncio dos bons.",
    "Imagine uma nova história para sua vida e acredite nela."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrases() {
    var random = Random();
    var numeroSorteado = random.nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    var appBar2 = AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.deepOrangeAccent,
      );
    return Scaffold(
      appBar: appBar2,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/frasedodia.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              ElevatedButton(
                child: Text(
                  _txtBtn,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: _gerarFrases,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
