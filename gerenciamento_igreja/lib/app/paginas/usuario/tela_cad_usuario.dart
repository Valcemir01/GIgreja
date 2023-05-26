import 'package:flutter/material.dart';
import 'package:gerenciamento_igreja/app/paginas/usuario/user_desc.dart';
import 'package:gerenciamento_igreja/app/paginas/usuario/user_mob.dart';

class TelaCadUsuario extends StatelessWidget {
  const TelaCadUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints ){
      final bool isMobile = constraints.maxWidth < 600;
      return Scaffold(
        body: isMobile
          ? UserMob()
          : UserDesc(),
      );
    });
  }
}
