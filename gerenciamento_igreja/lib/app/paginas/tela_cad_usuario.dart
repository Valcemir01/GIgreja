import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gerenciamento_igreja/app/componentes/titulo_form.dart';

import '../componentes/text_field_custon.dart';
import '../stores/cad_user_store.dart';

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
                  Observer(builder:
                  (_){
                    return   Expanded(
                        flex: 3,
                        child: TextFieldCuston(
                          icon: Icons.person,
                          label: 'Membro',
                          onChangeds:  cadUserStore.setNome,
                          erro: cadUserStore.erroNome,
                          enabled: cadUserStore.loading,
                        )
                    );
                  }
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Observer(builder:(_){
                    return
                      Expanded(
                        child: TextFieldCuston(
                          icon: Icons.phone,
                          label: 'Telefone',
                          onChangeds: cadUserStore.setTelefone,
                          erro: cadUserStore.erroTelefone,
                          enabled: cadUserStore.loading,
                          inputFormattes: [
                            FilteringTextInputFormatter.digitsOnly,
                            TelefoneInputFormatter(),
                          ],
                          keyboardTypes: TextInputType.number,
                        ),
                      );
                  }),
                ],
              ),
              Row(
                children:[
                  Observer(builder: (_){
                    return Expanded(
                      flex: 3,
                      child: TextFieldCuston(
                        icon: Icons.email,
                        label: 'E-Mail',
                        onChangeds: cadUserStore.setEmail,
                        erro: cadUserStore.erroEmail,
                        enabled: cadUserStore.loading,
                      ),
                    );
                  }),
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
              Row(
                children:[
                  Observer(builder: (_){
                    return Expanded(
                      child: TextFieldCuston(
                        icon: Icons.lock,
                        label: 'Senha',
                        isSecret: true,
                        onChangeds: cadUserStore.setSenha,
                        erro: cadUserStore.erroSenha,
                        enabled: cadUserStore.loading,
                      ),
                    );
                  }),
                  const SizedBox(
                    width: 12,
                  ),
                  Observer(builder: (_){
                    return Expanded(
                      child: TextFieldCuston(
                        icon: Icons.lock,
                        label: 'Confimação Senha',
                        isSecret: true,
                        onChangeds: cadUserStore.setSenha2,
                        erro: cadUserStore.erroSenha2,
                        enabled: cadUserStore.loading,
                      ),
                    );
                  }),
                ],
              ),
              Observer(builder: (_){
                return SizedBox(
                  width: 300,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed:  cadUserStore.verificaSalva != null ? () => cadUserStore.verificaSalva!() : null,
                          icon: const Icon(
                            Icons.save,
                          ),
                          label: cadUserStore.loading
                            ? const Text('Salvar')
                              : const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(),),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: cadUserStore.isFormValid ? (){} : null,
                          icon: const Icon(
                            Icons.clear,
                          ),
                          label: const Text('Limpar'),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
