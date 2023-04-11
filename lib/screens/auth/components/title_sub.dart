import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/provider/auth/function_auth_provider.dart';
import 'package:project/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class TitleAndSubTitle extends StatelessWidget {
  const TitleAndSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    FunctionAuthProvider functionAuthProvider =
        Provider.of<FunctionAuthProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          functionAuthProvider.changeLoginRegister ? 'Criar conta' : 'Login',
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          functionAuthProvider.changeLoginRegister
              ? 'Crie sua conta para continuar!'
              : 'Faça o login para continuar!',
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: ThemeColors.myBlack),
        )
      ],
    );
  }
}
