import 'package:flutter/material.dart';
import 'package:mini_compo/mini_compo.dart';

class TextFieldCompoDemo extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  TextFieldCompoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        TextFieldCompo(
          controller: _controller,
        ),
        TextFieldCompo(
          controller: _controller,
          hintText: '请输入账户',
        ),
        TextFieldCompo(
          controller: _controller,
          hintText: '请输入账户',
          hintTextStyle: const TextStyle(color: Colors.red),
        ),
        TextFieldCompo(
          controller: _controller,
          hintText: '请输入账户',
          getVCode: () {
            return Future.value(true);
          },
        ),
        TextFieldCompo(controller: _controller, isInputPwd: true),
      ],
    );
  }
}
