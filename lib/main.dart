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
  List foods = [
    'Chicken',
    'Pizza',
    'Burger',
    'Somsa',
    'Lagmon',
  ];
  List<Widget> getFood(foods) {
    List<Widget> foodList = [];
    for (var food in foods) {
      foodList.add(
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('images/${food}.png'),
          ),
          title: Text(food),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      );
    }
    return foodList;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: getFood(foods)),
      ),
    ));
  }
}
