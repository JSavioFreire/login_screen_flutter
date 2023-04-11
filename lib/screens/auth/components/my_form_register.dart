import 'package:flutter/material.dart';
import 'package:project/global/widgets/my_textformfield.dart';
import 'package:project/provider/auth/function_auth_provider.dart';
import 'package:provider/provider.dart';

class MyFormRegister extends StatelessWidget {
  const MyFormRegister({super.key});

  @override
  Widget build(BuildContext context) {
    FunctionAuthProvider functionAuthProvider =
        Provider.of<FunctionAuthProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          MyTextFormField(
            hint: 'Nome',
            controller: functionAuthProvider.nameRegister,
            preIcon: const Icon(Icons.person),
            keyboard: TextInputType.name,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Campo vazio. Digite seu nome!';
              } else {
                return null;
              }
            },
          ),
          MyTextFormField(
            hint: 'Email',
            controller: functionAuthProvider.emailRegister,
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
            hint: 'Telefone',
            controller: functionAuthProvider.phoneRegister,
            preIcon: const Icon(Icons.phone_android),
            keyboard: TextInputType.phone,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Campo vazio. Digite seu número!';
              } else if (value.length < 8) {
                return 'Digite um número válido';
              } else {
                return null;
              }
            },
          ),
          MyTextFormField(
            hint: 'Senha',
            controller: functionAuthProvider.passwordRegister,
            preIcon: const Icon(Icons.lock_rounded),
            keyboard: TextInputType.visiblePassword,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Campo vazio. Digite uma senha';
              } else if (value.length < 6) {
                return 'Senha muito curta! Sua senha deve ter no mínimo 6 caracteres';
              } else if (functionAuthProvider.passwordRegister.text !=
                  functionAuthProvider.confirmPasswordRegister.text) {
                return 'As senha não são iguais';
              } else {
                return null;
              }
            },
          ),
          MyTextFormField(
            hint: 'Confirmar senha',
            controller: functionAuthProvider.confirmPasswordRegister,
            preIcon: const Icon(Icons.lock_rounded),
            keyboard: TextInputType.visiblePassword,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Campo vazio. Digite uma senha';
              } else if (value.length < 6) {
                return 'Senha muito curta! Sua senha deve ter no mínimo 6 caracteres';
              } else if (functionAuthProvider.passwordRegister.text !=
                  functionAuthProvider.confirmPasswordRegister.text) {
                return 'As senha não são iguais';
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
