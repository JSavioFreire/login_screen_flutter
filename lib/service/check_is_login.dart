import 'package:flutter/material.dart';
import 'package:project/provider/auth/auth_provider.dart';
import 'package:project/screens/auth/auth_screen.dart';
import 'package:provider/provider.dart';

class CheckIsLogin extends StatelessWidget {
  const CheckIsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    return authProvider.users != null
        ? ElevatedButton(
            onPressed: () {
              authProvider.logout();
            },
            child: const Text('Sair'))
        : const AuthScreen();
  }
}
