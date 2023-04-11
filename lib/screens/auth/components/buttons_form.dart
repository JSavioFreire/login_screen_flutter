import 'package:flutter/material.dart';
import 'package:project/provider/auth/function_auth_provider.dart';
import 'package:project/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class ButtonsForm extends StatelessWidget {
  final BuildContext contextNew;
  final GlobalKey<FormState> formKey;
  const ButtonsForm({super.key, required this.formKey, required this.contextNew});

  @override
  Widget build(BuildContext context) {
    FunctionAuthProvider functionAuthProvider =
        Provider.of<FunctionAuthProvider>(context);

    String firstButton =
        functionAuthProvider.changeLoginRegister ? 'Cadastre-se' : 'Entrar';
    String secondButton =
        functionAuthProvider.changeLoginRegister ? 'Entre' : 'Cadastre-se';

    String preSecondButton = functionAuthProvider.changeLoginRegister
        ? 'Já tem login?'
        : 'Ainda não tem login?';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  functionAuthProvider.changeLoginRegister
                      ? functionAuthProvider.register(
                          context: contextNew,
                          email: functionAuthProvider.emailRegister,
                          password: functionAuthProvider.passwordRegister,
                          name: functionAuthProvider.nameRegister,
                          phone: functionAuthProvider.phoneRegister)
                      : functionAuthProvider.login(
                          context: contextNew,
                          email: functionAuthProvider.emailLogin,
                          password: functionAuthProvider.passwordLogin);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    firstButton,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Icon(Icons.arrow_forward_rounded)
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              preSecondButton,
              style: const TextStyle(color: ThemeColors.myBlack),
            ),
            TextButton(
                onPressed: () {
                  functionAuthProvider.changeAuthScreen();
                },
                child: Text(
                  secondButton,
                  style: const TextStyle(color: ThemeColors.moreDark),
                ))
          ]),
        )
      ],
    );
  }
}
