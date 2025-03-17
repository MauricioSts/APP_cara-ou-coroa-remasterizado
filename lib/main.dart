import 'dart:math';
import 'package:flutter/material.dart';
import 'TelaCaraCoroa.dart';  // Importando a tela Telacaracoroa

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void ProxTela(int resultado) {
    // Passando o resultado para a próxima tela
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Telacaracoroa(resultado: resultado),  // Passando resultado
      ),
    );
  }

  void Cara_coroa() {
    // Gera o resultado (0 ou 1) aleatoriamente
    int resultado = Random().nextInt(2);
    ProxTela(resultado); // Chama a função ProxTela passando o resultado
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green.shade500,
        width: double.infinity,
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Cara_coroa(); // Chama a função que gera o número aleatório e navega
              },
              child: Image.asset("images/botao_jogar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
