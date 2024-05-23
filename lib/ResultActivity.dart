import 'package:flutter/material.dart';

import 'CustomColors.dart';

class ResultActivity extends StatefulWidget {
  late String imgCoin;

  ResultActivity(this.imgCoin, {super.key});

  @override
  State<ResultActivity> createState() => _ResultActivityState();
}

class _ResultActivityState extends State<ResultActivity> {
  String _btnBack = "images/botao_voltar.png";

  void _back() {
    // fechando tela atual
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(widget.imgCoin),
          Padding(
            padding: EdgeInsets.only(top: 70),
            child: GestureDetector(
              onTap: _back,
              child: Image.asset(_btnBack),
            ),
          ),
        ],
      ),
    );
  }
}
