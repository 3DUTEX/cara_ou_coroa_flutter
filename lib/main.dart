// green #61bd8c

import 'dart:math';

import 'package:cara_ou_coroa/ResultActivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomColors.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainActivity(),
  ));
}

class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  String _logo = "images/logo.png";
  String _btnPlay = "images/botao_jogar.png";

  void _jogar() {
    int randomNumber = Random().nextInt(2);
    String imgCoin = "";

    if (randomNumber == 0) {
      imgCoin = "images/moeda_cara.png";
    } else {
      imgCoin = "images/moeda_coroa.png";
    }

    // Abre nova tela e passa imagem da moeda
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ResultActivity(imgCoin)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Image.asset(_logo),
          ),
          GestureDetector(
            onTap: _jogar,
            child: Image.asset(_btnPlay),
          ),
        ],
      ),
    );
  }
}
