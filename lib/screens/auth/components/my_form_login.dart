import 'package:flutter/material.dart';
import 'package:project/global/widgets/my_textformfield.dart';
import 'package:project/provider/auth/function_auth_provider.dart';
import 'package:provider/provider.dart';

class MyFormLogin extends StatelessWidget {
  const MyFormLogin({super.key});

  @override
  Widget build(BuildContext context) {
    FunctionAuthProvider functionAuthProvider =
        Provider.of<FunctionAuthProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          MyTextFormField(
            hint: 'Email',
            controller: functionAuthProvider.emailLogin,
            preIcon: const Icon(Icons.email_outlined),
            keyboard: TextInputType.emailAddress,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Campo vazio. Digite seu email!';
              } else if (value.contains('@') && value.contains('.com')) {
                return null;
              } else {
                return 'Digite um email válido!';
              }
            },
          ),
          MyTextFormField(
            hint: 'Senha',
            controller: functionAuthProvider.passwordLogin,
            preIcon: const Icon(Icons.lock_rounded),
            keyboard: TextInputType.visiblePassword,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Campo vazio. Digite uma senha';
              } else if (value.length < 6) {
                return 'Senha incorreta, sua senha deve ter no mínimo 6 caracteres';
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );
  }
}
