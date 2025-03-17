import 'package:flutter/material.dart';

class Telacaracoroa extends StatefulWidget {
  final int resultado; // Declarando o parâmetro resultado

  // Construtor correto
  const Telacaracoroa({
    super.key,
    required this.resultado,
  }); // Usando o parâmetro

  @override
  State<Telacaracoroa> createState() => _TelacaracoroaState();
}

class _TelacaracoroaState extends State<Telacaracoroa> {
  void Voltar() {
    Navigator.pop(context); // Navega para a tela anterior
  }

  var imagem = "images/moeda_cara.png";

  @override
  Widget build(BuildContext context) {
    if (widget.resultado == 0) {
      setState(() {
        imagem = "images/moeda_cara.png";
      });
    } else {
      setState(() {
        imagem = "images/moeda_coroa.png";
      });
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagem,
            ), // Exibe a imagem da moeda dependendo do resultado
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Voltar(); // Voltar para a tela anterior
              },
              child: Image.asset("images/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
