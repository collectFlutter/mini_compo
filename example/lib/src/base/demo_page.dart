import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  final List<Widget> children;
  final Widget? separator;

  const DemoPage({Key? key, required this.children, this.separator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) => children[index],
      separatorBuilder: (ctx, index) => separator ?? const SizedBox(height: 10),
      itemCount: children.length,
    );
  }
}
