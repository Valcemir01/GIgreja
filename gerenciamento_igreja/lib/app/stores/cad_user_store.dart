import 'package:gerenciamento_igreja/app/modelo/usuario.dart';
import 'package:gerenciamento_igreja/app/repositorio/usuario_repositorio.dart';
import 'package:mobx/mobx.dart';
import 'package:gerenciamento_igreja/app/configuracoes/extecao.dart';

part 'cad_user_store.g.dart';

class CadUserStore = _CadUserStore with _$CadUserStore;

abstract class _CadUserStore with Store {
// --------NOME ---------//
  @observable
  String? nome;

  @action
  void setNome(String valor) => nome = valor;

  @computed
  bool get nomeValid => nome != null && nome!.length > 8;
  String? get erroNome {
    if (nome == null || nomeValid) {
      return null;
    } else if (nome!.isEmpty) {
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
  bool get telefoneValid => telefone != null && telefone!.length > 13;
  String? get erroTelefone {
    if (telefone == null || telefoneValid) {
      return null;
    } else if (telefone!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Telefone invalido';
    }
  }

  //------------SENHA-----------//
  @observable
  String? senha;

  @action
  void setSenha(String? valor) => senha = valor;

  @computed
  bool get senhaValid => senha != null && senha!.length >= 8;
  String? get erroSenha {
    if (senha == null || senhaValid) {
      return null;
    } else if (senha!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Senha muito curto';
    }
  }

  //------------SENHA2-----------//
  @observable
  String? senha2;

  @action
  void setSenha2(String? valor) => senha2 = valor;

  @computed
  bool get senha2Valid => senha2 != null && senha2 == senha;
  String? get erroSenha2 {
    if (senha2 == null || senha2Valid) {
      return null;
    }else {
      return 'Senhas não coincidem';
    }
  }

  //------------EMAIL-----------//
  @observable
  String? email;

  @action
  void setEmail(String? valor) => email = valor;

  @computed
  bool get emailValid => email != null && email!.isEmailValido();
  String? get erroEmail {
    if (email == null || emailValid) {
      return null;
    } else if (email!.isEmpty) {
      return 'Campo obrigatório';
    } else {
      return 'Email invalido';
    }
  }

  //------------VALIDA FORMULARIO-----------//
  @computed
  bool get isFormValid => nomeValid && emailValid
      && telefoneValid && senhaValid && senha2Valid;

  //------------CADASTRA USUARIO-----------//
  @computed
  Function? get verificaSalva => (isFormValid && loading) ? _Salvar : null;

  @observable
  bool loading = true;

  @action
  Future<void> _Salvar() async{
    loading = false;
    final user = Usuario(
      nome: nome,
      telefone: telefone,
      email: email,
      senha: senha,
      type: UserType.PASTOR,
    );

    await UsuarioRepositorio().Salvar(user);
    loading = true;
  }
}