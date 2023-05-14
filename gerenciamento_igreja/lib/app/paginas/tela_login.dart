import 'package:flutter/material.dart';

import '../componentes/tesxfieldcuston.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 500,
          child: Card(
            color: Colors.grey[500],
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'ENTRAR',
                    style: TextStyle(
                      color: Color(0xff2d5986),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16,),
                  const TextFieldCuston(
                    icon: Icons.person,
                    label: 'Email',
                    keyboardTypes: TextInputType.emailAddress,
                  ),
                  const TextFieldCuston(
                    icon: Icons.lock,
                    label: 'Senha',
                    isSecret: true,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // lógica de validação de login
                        },
                        child: Text('Salvar'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
