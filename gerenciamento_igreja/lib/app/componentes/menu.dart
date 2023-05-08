import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../stores/page_store.dart';

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
            color: Colors.indigo,
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
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Jose Valcemir',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
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
              color: Colors.indigo.shade300,
              child: ListView(
                children: [
                  ExpansionTile(
                    title: const Text('Cadastro'),
                    leading: const Icon(Icons.add_card),
                    children: [
                      ListTile(
                        title: const Text(
                          'Funcionario',
                        ),
                        onTap: () {
                          isMobile ? Navigator.of(context).pop() : null;
                          pageStore.setPage(0);
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Cliente',
                        ),
                        onTap: () {
                          isMobile ? Navigator.of(context).pop() : null;
                          pageStore.setPage(1);
                        },
                      ),
                      ListTile(
                        title: const Text(
                          'Fornecedor',
                        ),
                        onTap: () {
                          isMobile ? Navigator.of(context).pop() : null;
                          pageStore.setPage(2);
                        },
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                  ExpansionTile(
                    title: const Text('Venda',),
                    leading: const Icon(Icons.add_chart_outlined,),
                    children: [
                      ListTile(
                        title: const Text(
                          'Produtos',
                        ),
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
