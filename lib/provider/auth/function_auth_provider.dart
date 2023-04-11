import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/global/components/my_snack.dart';
import 'package:project/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class FunctionAuthProvider extends ChangeNotifier {
  BuildContext context;
  FunctionAuthProvider({required this.context});
  FirebaseFirestore db = FirebaseFirestore.instance;

  TextEditingController emailLogin = TextEditingController();
  TextEditingController passwordLogin = TextEditingController();
  TextEditingController nameRegister = TextEditingController();
  TextEditingController emailRegister = TextEditingController();
  TextEditingController phoneRegister = TextEditingController();
  TextEditingController passwordRegister = TextEditingController();
  TextEditingController confirmPasswordRegister = TextEditingController();

  bool changeLoginRegister = false;
  bool buttonInLoading = false;
  bool iconVisibility = true;

  late AuthProvider authProvider =
      Provider.of<AuthProvider>(context, listen: false);

  void changeToVisibility() {
    iconVisibility = !iconVisibility;
    notifyListeners();
  }

  void changeAuthScreen() {
    changeLoginRegister = !changeLoginRegister;
    notifyListeners();
  }

  void login({required context, required email, required password}) async {
    buttonInLoading = true;
    notifyListeners();
    try {
      await authProvider.login(
        email: email.text,
        password: password.text,
      );

      buttonInLoading = false;

      notifyListeners();
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(myShowSnackBar(e.message));
      buttonInLoading = false;
      notifyListeners();
    }
  }

  void register(
      {required context,
      required email,
      required password,
      required name,
      required phone}) async {
    buttonInLoading = true;
    notifyListeners();

    try {
      await authProvider.register(
          email: emailRegister.text,
          password: passwordRegister.text,
          name: nameRegister.text);

      buttonInLoading = false;

      notifyListeners();
    } on AuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(myShowSnackBar(e.message));

      buttonInLoading = false;
      notifyListeners();
    }
  }
}
