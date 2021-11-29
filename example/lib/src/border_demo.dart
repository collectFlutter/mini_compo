import 'package:flutter/material.dart';
import 'package:mini_compo/mini_compo.dart';

class BorderCompoDemo extends StatefulWidget {
  const BorderCompoDemo({Key? key}) : super(key: key);

  @override
  _BorderCompoDemoState createState() => _BorderCompoDemoState();
}

class _BorderCompoDemoState extends State<BorderCompoDemo> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        BorderCompo(
          label: '默认',
        ),
      ],
    );
  }
}
