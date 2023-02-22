import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/Chicken.png'),
            ),
            title: Text('Chicken'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/Pizza.png'),
            ),
            title: Text('Pizza'),
          )
        ]),
      ),
    ));
  }
}
