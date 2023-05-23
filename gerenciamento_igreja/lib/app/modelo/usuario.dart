enum UserType {
  SECRETARIO,
  PASTOR,
}

class Usuario {
  String? id;
  String? nome;
  String? telefone;
  String? email;
  String? senha;
  UserType? type = UserType.SECRETARIO;

  Usuario({
    this.id,
    this.nome,
    this.telefone,
    this.email,
    this.senha,
    this.type,
  });
}
