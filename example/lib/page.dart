import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  final Widget child;
  final String? title;

  const Page({Key? key, required this.child, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? child.runtimeType.toString()),
        centerTitle: true,
      ),
      body: child,
    );
  }
}

extension ContextExtension on BuildContext {
  Future push(Widget child) => Navigator.push(
      this, MaterialPageRoute(builder: (_) => Page(child: child)));
}
