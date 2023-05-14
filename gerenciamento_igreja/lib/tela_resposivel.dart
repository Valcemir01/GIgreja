import 'package:flutter/material.dart';
import 'package:gerenciamento_igreja/app/componentes/menu.dart';
import 'package:gerenciamento_igreja/app/paginas/tela_base.dart';

class TelaResponsivel extends StatefulWidget {
  const TelaResponsivel({Key? key}) : super(key: key);

  @override
  State<TelaResponsivel> createState() => _TelaResponsivelState();
}

class _TelaResponsivelState extends State<TelaResponsivel> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return Scaffold(
        drawer: isMobile ? Menu(isMobile: isMobile) : null,
        appBar: AppBar(
          title: const Text('A.S.I'),
        ),
        body: isMobile
            ? SizedBox(
                child: TelaBase(),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              )
            : SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Row(
                  children: [
                    Menu(
                      isMobile: isMobile,
                    ),
                    Expanded(
                      child: TelaBase(),
                    ),
                  ],
                ),
              ),
      );
    });
  }
}
