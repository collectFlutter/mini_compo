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
        BorderCompo(label: '默认'),
        BorderCompo(
          label: '开始',
          margin: EdgeInsets.all(10),
          textColor: Colors.blue,
        ),
        BorderCompo(
          label: '补卡',
          margin: EdgeInsets.all(10),
          textColor: Colors.orange,
          width: 200,
        ),
        BorderCompo(
          label: '完成',
          margin: EdgeInsets.all(10),
          textColor: Colors.green,
          width: 80,
          height: 80,
        ),
        ListTile(
          leading: Icon(Icons.add_to_drive_rounded),
          title: Text("标题"),
          subtitle: Text("副标题"),
          trailing: BorderCompo(
            label: '已完成',
            textColor: Colors.green,
            width: 100,
            height: double.infinity,
            borderRadius: BorderRadius.zero,
          ),
        )
      ],
    );
  }
}
