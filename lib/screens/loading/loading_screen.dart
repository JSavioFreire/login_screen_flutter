import 'package:flutter/material.dart';
import 'package:project/global/widgets/my_scaffold.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(inside: Text('loading'));
  }
}
