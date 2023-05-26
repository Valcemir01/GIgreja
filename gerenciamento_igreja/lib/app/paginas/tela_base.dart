import 'package:flutter/material.dart';
import 'package:gerenciamento_igreja/app/paginas/usuario/tela_cad_usuario.dart';
import 'package:gerenciamento_igreja/app/stores/page_store.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';


class TelaBase extends StatefulWidget {
  TelaBase({Key? key}) : super(key: key);

  @override
  State<TelaBase> createState() => _TelaBaseState();
}

class _TelaBaseState extends State<TelaBase> {
  final PageController pageController = PageController();
  final PageStore pageStore = GetIt.I<PageStore>();


  @override
  void initState() {
    super.initState();

    reaction((_) => pageStore.page,
            (page) => pageController.jumpToPage(page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(child: const Text('Funcionario'),),
              Container(child: const Text('Cliente'),),
              Container(child: const Text('Fornecedor'),),
              TelaCadUsuario(),
            ],
          ),
        ),
      ),
    );
  }
}
