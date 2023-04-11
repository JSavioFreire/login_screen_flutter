import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  final Widget inside;
  final Widget? footer;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? fabutton;
  final Color? color;

  const MyScaffold(
      {super.key,
      required this.inside,
      this.footer,
      this.bottomNavigationBar,
      this.drawer,
      this.fabutton,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: inside,
        backgroundColor: color,
        bottomSheet: footer,
        drawer: drawer,
        floatingActionButton: fabutton,
        bottomNavigationBar: bottomNavigationBar);
  }
}
