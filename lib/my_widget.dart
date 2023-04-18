import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  const MyWidget(
    this.nome, this.cor, this.tamanhoTexto, this.tamanhoPadding, {super.key} );

  final String nome;
  final Color cor;
  final double tamanhoTexto;
  final double tamanhoPadding;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: EdgeInsets.all(tamanhoPadding),
        child: Text(nome, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
