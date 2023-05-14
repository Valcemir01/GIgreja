import 'package:flutter/material.dart';

class ListTileCuston extends StatelessWidget {
  final String titulo;
  final VoidCallback onTap;

  const ListTileCuston({
    Key? key,
    required this.titulo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(titulo),
      onTap: onTap,
    );
  }
}
