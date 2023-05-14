import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../stores/page_store.dart';
import 'expansio_tile_custon.dart';
import 'list_tile_custon.dart';

class Menu extends StatelessWidget {
  final bool isMobile;

  Menu({Key? key, required this.isMobile}) : super(key: key);

  final PageStore pageStore = GetIt.I<PageStore>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Column(
        children: [
          Container(
            color: const Color(0xff204060),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                if (isMobile)
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Seja Bem Vindo',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Jose Valcemir',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              color: const Color(0xff204060),
              child: ListView(
                children: [
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                  ExpansioTileCuston(
                    titulo: Text('Cadastro'),
                    icon: Icon(Icons.add_card),
                    chidren: [
                      ListTileCuston(
                        titulo: 'Funcionario',
                        onTap: () {
                          isMobile ? Navigator.of(context).pop() : null;
                          pageStore.setPage(0);
                        },
                      ),
                      ListTileCuston(
                        titulo: 'Cliente',
                        onTap: () {
                          isMobile ? Navigator.of(context).pop() : null;
                          pageStore.setPage(1);
                        },
                      ),
                      ListTileCuston(
                        titulo: 'Fornecedor',
                        onTap: () {
                          isMobile ? Navigator.of(context).pop() : null;
                          pageStore.setPage(2);
                        },
                      ),
                      ListTileCuston(
                        titulo: 'Usuario',
                        onTap: () {
                          isMobile ? Navigator.of(context).pop() : null;
                          pageStore.setPage(3);
                        },
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                  ExpansioTileCuston(
                    titulo: Text('Venda'),
                    icon: Icon(Icons.add_chart_outlined),
                    chidren: [
                      ListTileCuston(
                        titulo: 'Produto',
                        onTap: () {},
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
