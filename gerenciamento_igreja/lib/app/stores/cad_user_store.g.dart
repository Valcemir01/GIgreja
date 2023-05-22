// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cad_user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CadUserStore on _CadUserStore, Store {
  Computed<String?>? _$erroNomeComputed;

  @override
  String? get erroNome =>
      (_$erroNomeComputed ??= Computed<String?>(() => super.erroNome,
              name: '_CadUserStore.erroNome'))
          .value;
  Computed<String?>? _$erroTelefoneComputed;

  @override
  String? get erroTelefone =>
      (_$erroTelefoneComputed ??= Computed<String?>(() => super.erroTelefone,
              name: '_CadUserStore.erroTelefone'))
          .value;
  Computed<String?>? _$erroUsuarioComputed;

  @override
  String? get erroUsuario =>
      (_$erroUsuarioComputed ??= Computed<String?>(() => super.erroUsuario,
              name: '_CadUserStore.erroUsuario'))
          .value;
  Computed<String?>? _$erroSenhaComputed;

  @override
  String? get erroSenha =>
      (_$erroSenhaComputed ??= Computed<String?>(() => super.erroSenha,
              name: '_CadUserStore.erroSenha'))
          .value;

  late final _$nomeAtom = Atom(name: '_CadUserStore.nome', context: context);

  @override
  String? get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String? value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$telefoneAtom =
      Atom(name: '_CadUserStore.telefone', context: context);

  @override
  String? get telefone {
    _$telefoneAtom.reportRead();
    return super.telefone;
  }

  @override
  set telefone(String? value) {
    _$telefoneAtom.reportWrite(value, super.telefone, () {
      super.telefone = value;
    });
  }

  late final _$usuarioAtom =
      Atom(name: '_CadUserStore.usuario', context: context);

  @override
  String? get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(String? value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  late final _$senhaAtom = Atom(name: '_CadUserStore.senha', context: context);

  @override
  String? get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String? value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$_CadUserStoreActionController =
      ActionController(name: '_CadUserStore', context: context);

  @override
  void setNome(String valor) {
    final _$actionInfo = _$_CadUserStoreActionController.startAction(
        name: '_CadUserStore.setNome');
    try {
      return super.setNome(valor);
    } finally {
      _$_CadUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTelefone(String valor) {
    final _$actionInfo = _$_CadUserStoreActionController.startAction(
        name: '_CadUserStore.setTelefone');
    try {
      return super.setTelefone(valor);
    } finally {
      _$_CadUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUsuario(String? valor) {
    final _$actionInfo = _$_CadUserStoreActionController.startAction(
        name: '_CadUserStore.setUsuario');
    try {
      return super.setUsuario(valor);
    } finally {
      _$_CadUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String? valor) {
    final _$actionInfo = _$_CadUserStoreActionController.startAction(
        name: '_CadUserStore.setSenha');
    try {
      return super.setSenha(valor);
    } finally {
      _$_CadUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
telefone: ${telefone},
usuario: ${usuario},
senha: ${senha},
erroNome: ${erroNome},
erroTelefone: ${erroTelefone},
erroUsuario: ${erroUsuario},
erroSenha: ${erroSenha}
    ''';
  }
}
