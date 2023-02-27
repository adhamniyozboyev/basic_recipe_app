import 'package:flutter/material.dart';

Map data = {
  'Chicken': '20 min',
  'Pizza': '15 min',
  'Lagmon': '10 min',
  'Burger': '7 min',
  'Somsa': '30 min',
};
Map star = {
  'Chicken': '3.2',
  'Pizza': '3.0',
  'Lagmon': '3.5',
  'Burger': '4',
  'Somsa': '5.0',
};
Map ckal = {
  'Chicken': '200',
  'Pizza': '300',
  'Lagmon': '350',
  'Burger': '180',
  'Somsa': '500',
};

class foodWidget extends StatelessWidget {
  final String food;
  const foodWidget({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('images/${food}.png'),
      ),
      title: Text(food,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          )),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.access_time,
            size: 20,
            color: Colors.grey[300],
          ),
          Text(
            data[food],
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow[700],
          ),
          Text(star[food],
              style: TextStyle(
                color: Colors.yellow[700],
              )),
          Icon(
            Icons.local_fire_department,
            size: 20,
            color: Colors.red[300],
          ),
          Text(ckal[food],
              style: TextStyle(
                color: Colors.red[300],
              )),
        ],
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
