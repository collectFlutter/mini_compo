import 'package:flutter/material.dart';
import 'package:mini_compo/mini_compo.dart';

class SearchCompoDemo extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  SearchCompoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey,
          child: SearchCompo(
            controller: _controller,
            color: Colors.white,
            height: 50,
            borderRadius: const BorderRadius.all(Radius.circular(24)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchCompo(
            controller: _controller,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchCompo(
            controller: _controller,
            hintTextStyle: const TextStyle(color: Colors.red, fontSize: 12),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchCompo(controller: _controller, color: Colors.red),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchCompo(controller: _controller, autoFocus: true),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchCompo(controller: _controller, showIcon: false),
        ),
      ],
    );
  }
}
