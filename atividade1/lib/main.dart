import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é seu animnal favorito?',
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: Column(
              children: [
                Text(perguntas[perguntaSelecionada]),
                ElevatedButton(
                  child: Text('resposta 1'),
                  onPressed: responder,
                ),
                ElevatedButton(
                  child: Text('resposta 2'),
                  onPressed: responder,
                ),
                ElevatedButton(
                  child: Text('resposta 3'),
                  onPressed: responder,
                ),
              ],
            )));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
