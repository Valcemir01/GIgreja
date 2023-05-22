import 'package:mobx/mobx.dart';

part 'cad_user_store.g.dart';

class CadUserStore = _CadUserStore with _$CadUserStore;

abstract class _CadUserStore with Store {
// --------NOME ---------//
  @observable
  String? nome;

  @action
  void setNome(String valor) => nome = valor;

  @computed
  String? get erroNome {
    if (nome == null || nome!.length > 6) {
      return null;
    } else if (nome == null || nome!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Nome muito curto';
    }
  }

  // ------------- TELEFONE ----------//
  @observable
  String? telefone;
  
  @action
  void setTelefone(String valor) => telefone = valor;

  @computed
  String? get erroTelefone {
    if (telefone == null || telefone!.length > 13) {
      return null;
    } else if (telefone == null || telefone!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Nome muito curto';
    }
  }

  //------------USUARIO-----------//
  @observable
  String? usuario;

  @action
  void setUsuario(String? valor) => usuario = valor;

  @computed
  String? get erroUsuario {
    if (usuario == null || usuario!.length > 6) {
      return null;
    } else if (usuario == null || usuario!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Nome muito curto';
    }
  }

  //------------SENHA-----------//
  @observable
  String? senha;

  @action
  void setSenha(String? valor) => senha = valor;

  @computed
  String? get erroSenha {
    if (senha == null || senha!.length > 8) {
      return null;
    } else if (senha == null || senha!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Nome muito curto';
    }
  }
}