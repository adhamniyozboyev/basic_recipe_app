import 'package:flutter/material.dart';
import 'package:basic_recipe_app/foodWidget.dart';

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
  Map data = {
    'Chicken': Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.access_time,
          size: 20,
          color: Colors.grey[300],
        ),
        Text(
          '20 min',
          style: TextStyle(
            color: Colors.grey[400],
          ),
        ),
        Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow[700],
        ),
        Text('5.0',
            style: TextStyle(
              color: Colors.yellow[700],
            )),
        Icon(
          Icons.local_fire_department,
          size: 20,
          color: Colors.red[300],
        ),
        Text('200 cal',
            style: TextStyle(
              color: Colors.red[300],
            )),
      ],
    ),
  };
  List<Widget> getFood(foods) {
    List<Widget> foodList = [];
    for (var food in foods) {
      foodList.add(
        foodWidget(food: food),
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
