import 'package:gerenciamento_igreja/app/configuracoes/parse_erros.dart';
import 'package:gerenciamento_igreja/app/modelo/usuario.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

import '../configuracoes/tabela_chaves.dart';

class UsuarioRepositorio {
  Future<void> Salvar(Usuario user) async{
    final parseUser = ParseUser(
      user.email,
      user.senha,
      user.email,
    );

    parseUser.set<String?>(keyUserName , user.nome);
    parseUser.set<String?>(keyUserTelefone , user.telefone);
    parseUser.set(keyUserType , user.type?.index);

    final respose = await parseUser.signUp();

    if(respose.success){
      print(respose.result);
    }else{
      return Future.error(ParseErrors.getDescription(respose.error!.code)!);
    }
  }
}