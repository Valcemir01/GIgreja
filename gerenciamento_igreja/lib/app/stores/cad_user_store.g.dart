// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cad_user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CadUserStore on _CadUserStore, Store {
  Computed<bool>? _$nomeValidComputed;

  @override
  bool get nomeValid =>
      (_$nomeValidComputed ??= Computed<bool>(() => super.nomeValid,
              name: '_CadUserStore.nomeValid'))
          .value;
  Computed<bool>? _$telefoneValidComputed;

  @override
  bool get telefoneValid =>
      (_$telefoneValidComputed ??= Computed<bool>(() => super.telefoneValid,
              name: '_CadUserStore.telefoneValid'))
          .value;
  Computed<bool>? _$senhaValidComputed;

  @override
  bool get senhaValid =>
      (_$senhaValidComputed ??= Computed<bool>(() => super.senhaValid,
              name: '_CadUserStore.senhaValid'))
          .value;
  Computed<bool>? _$senha2ValidComputed;

  @override
  bool get senha2Valid =>
      (_$senha2ValidComputed ??= Computed<bool>(() => super.senha2Valid,
              name: '_CadUserStore.senha2Valid'))
          .value;
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_CadUserStore.emailValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_CadUserStore.isFormValid'))
          .value;
  Computed<Function?>? _$verificaSalvaComputed;

  @override
  Function? get verificaSalva => (_$verificaSalvaComputed ??=
          Computed<Function?>(() => super.verificaSalva,
              name: '_CadUserStore.verificaSalva'))
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

  late final _$senha2Atom =
      Atom(name: '_CadUserStore.senha2', context: context);

  @override
  String? get senha2 {
    _$senha2Atom.reportRead();
    return super.senha2;
  }

  @override
  set senha2(String? value) {
    _$senha2Atom.reportWrite(value, super.senha2, () {
      super.senha2 = value;
    });
  }

  late final _$emailAtom = Atom(name: '_CadUserStore.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_CadUserStore.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$SalvarAsyncAction =
      AsyncAction('_CadUserStore.Salvar', context: context);

  @override
  Future<void> Salvar() {
    return _$SalvarAsyncAction.run(() => super.Salvar());
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
  void setSenha2(String? valor) {
    final _$actionInfo = _$_CadUserStoreActionController.startAction(
        name: '_CadUserStore.setSenha2');
    try {
      return super.setSenha2(valor);
    } finally {
      _$_CadUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String? valor) {
    final _$actionInfo = _$_CadUserStoreActionController.startAction(
        name: '_CadUserStore.setEmail');
    try {
      return super.setEmail(valor);
    } finally {
      _$_CadUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
telefone: ${telefone},
senha: ${senha},
senha2: ${senha2},
email: ${email},
loading: ${loading},
nomeValid: ${nomeValid},
telefoneValid: ${telefoneValid},
senhaValid: ${senhaValid},
senha2Valid: ${senha2Valid},
emailValid: ${emailValid},
isFormValid: ${isFormValid},
verificaSalva: ${verificaSalva}
    ''';
  }
}
