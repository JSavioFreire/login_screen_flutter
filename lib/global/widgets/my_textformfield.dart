import 'package:flutter/material.dart';
import 'package:project/provider/auth/function_auth_provider.dart';
import 'package:project/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class MyTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final dynamic keyboard;
  final dynamic validator;
  final Icon? preIcon;
  const MyTextFormField(
      {super.key,
      required this.hint,
      required this.controller,
      this.keyboard,
      this.validator,
      this.preIcon});

  @override
  Widget build(BuildContext context) {
    FunctionAuthProvider functionAuthProvider =
        Provider.of<FunctionAuthProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: TextFormField(
          controller: controller,
          keyboardType: keyboard,
          obscureText: keyboard == TextInputType.visiblePassword
              ? functionAuthProvider.iconVisibility
              : false,
          validator: validator,
          decoration: InputDecoration(
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            fillColor: Colors.white10,
            filled: true,
            hintText: hint,
            prefixIcon: preIcon,
            suffixIcon: keyboard == TextInputType.visiblePassword
                ? IconButton(
                    icon: functionAuthProvider.iconVisibility
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                    onPressed: () {
                      functionAuthProvider.changeToVisibility();
                    },
                  )
                : null,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.pink,
                )),
          ),
        ),
      ),
    );
  }
}
