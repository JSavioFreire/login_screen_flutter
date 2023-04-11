import 'package:flutter/material.dart';
import 'package:project/global/widgets/my_scaffold.dart';
import 'package:project/provider/auth/function_auth_provider.dart';
import 'package:project/screens/auth/components/buttons_form.dart';
import 'package:project/screens/auth/components/my_form_login.dart';
import 'package:project/screens/auth/components/my_form_register.dart';
import 'package:project/screens/auth/components/title_sub.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FunctionAuthProvider functionAuthProvider =
        Provider.of<FunctionAuthProvider>(context);
    final formKey = GlobalKey<FormState>();

    return MyScaffold(
        inside: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleAndSubTitle(),
                functionAuthProvider.changeLoginRegister
                    ? const MyFormRegister()
                    : const MyFormLogin(),
                ButtonsForm(
                  formKey: formKey,
                  contextNew: context,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
