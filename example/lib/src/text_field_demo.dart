import 'package:flutter/material.dart';
import 'package:mini_compo/mini_compo.dart';

import 'base/demo_page.dart';

class TextFieldCompoDemo extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  TextFieldCompoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoPage(
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
        TextFieldCompo(
          controller: _controller,
          icon: const Icon(Icons.lock),
          hintText: '请输入密码……',
        ),
        TextFieldCompo(
          controller: _controller,
          label:const Text("label"),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
