import 'package:example/src/badge_demo.dart';
import 'package:example/src/search_demo.dart';
import 'package:example/src/text_field_demo.dart';
import 'package:flutter/material.dart';
import 'page.dart';
import 'src/border_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, Widget> pages = {};

  @override
  void initState() {
    super.initState();
    _update();
  }

  void _update() {
    pages.clear();
    pages.addAll({
      'BadgeCompo': const BadgeCompoDemo(),
      'BorderCompo': const BorderCompoDemo(),
      'TextFieldCompo': TextFieldCompoDemo(),
      'SearchCompo': SearchCompoDemo(),
    });
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<String> keys = pages.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => ListTile(
          leading: Text(keys[index]),
          onTap: () => ctx.push(pages[keys[index]]!),
        ),
        itemCount: keys.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _update,
        tooltip: '更新',
        child: const Icon(Icons.update),
      ),
    );
  }
}
