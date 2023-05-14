import 'package:flutter/material.dart';

import 'listtilecuston.dart';

class ExpansioTileCuston extends StatelessWidget {
  final Text titulo;
  final Icon icon;
  final List<ListTileCuston> chidren;

  const ExpansioTileCuston({
    Key? key,
    required this.titulo,
    required this.icon,
    required this.chidren,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: titulo,
      leading: icon,
      textColor:  Colors.orangeAccent,
      iconColor:  Colors.orangeAccent,
      children: chidren,
    );
  }
}
