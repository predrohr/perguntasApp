import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?'
          'Qual é seu animnal favorito?'
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: Column(
              children: [
                Text(perguntas[0]),
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
