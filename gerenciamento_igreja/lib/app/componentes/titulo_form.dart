import 'package:flutter/material.dart';

class TituloForm extends StatelessWidget {
  final String titulo;

  const TituloForm({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titulo,
      style: const TextStyle(
          color: Color(0xff2d5986),
          fontSize: 28,
          fontWeight: FontWeight.bold,
      ),
    );
  }
}
