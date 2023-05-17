import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gerenciamento_igreja/app/componentes/titulo_form.dart';

import '../componentes/text_field_custon.dart';
import '../stores/cad_usuario_store.dart';

class TelaCadUsuario extends StatelessWidget {
  TelaCadUsuario({Key? key}) : super(key: key);
  CadUserStore cadUserStore = CadUserStore();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        child: Container(
          margin: EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TituloForm(titulo: 'USUARIOS'),
              const Divider(
                thickness: 2,
                color: Color(0xff2d5986),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Observer(builder: (_){
                      return TextFieldCuston(
                        icon: Icons.person,
                        label: 'Membro',
                        onChangeds: cadUserStore.setName,
                        erro: cadUserStore.nomeErro,
                      );
                    },)
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFieldCuston(
                      icon: Icons.phone,
                      label: 'Telefone',
                      inputFormattes: [
                        FilteringTextInputFormatter.digitsOnly,
                        TelefoneInputFormatter(),
                      ],
                      keyboardTypes: TextInputType.number,
                    ),
                  ),
                ],
              ),
              Row(
                children:[
                  Expanded(
                    flex: 3,
                    child: TextFieldCuston(
                      icon: Icons.email,
                      label: 'E-Mail',
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFieldCuston(
                      icon: Icons.person,
                      label: 'Apelido',
                    ),
                  ),
                ],
              ),
              Row(
                children:[
                  Expanded(
                    child: TextFieldCuston(
                      icon: Icons.lock,
                      label: 'Senha',
                      isSecret: true,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextFieldCuston(
                      icon: Icons.lock,
                      label: 'Confimação Senha',
                      isSecret: true,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 300,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.save,
                        ),
                        label: const Text('Salvar'),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.clear,
                        ),
                        label: const Text('Limpar'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
