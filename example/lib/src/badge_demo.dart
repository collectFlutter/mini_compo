import 'package:flutter/material.dart';
import 'package:mini_compo/mini_compo.dart';

class BadgeCompoDemo extends StatefulWidget {
  const BadgeCompoDemo({Key? key}) : super(key: key);

  @override
  _BadgeCompoDemoState createState() => _BadgeCompoDemoState();
}

class _BadgeCompoDemoState extends State<BadgeCompoDemo> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        BadgeCompo(child: Icon(Icons.eleven_mp)),
        BadgeCompo(
          child: Icon(Icons.eleven_mp),
          number: 2,
        ),
        BadgeCompo(
          child: Icon(Icons.eleven_mp),
          number: 12,
        ),
        BadgeCompo(
          child: Icon(Icons.eleven_mp),
          number: 120,
          offsetX: -15,
        ),
        BadgeCompo(
          child: Icon(Icons.eleven_mp),
          text: '34',
        ),
        BadgeCompo(
          child: Icon(Icons.person),
          text: '245',
          backgroundColor: Colors.blue,
          borderColor: Colors.blue  ,
          borderWidth: 0,
          offsetX: -15,
        ),
      ],
    );
  }
}
