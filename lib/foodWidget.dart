import 'package:flutter/material.dart';

Map data = {
  'Chicken': {'time': '20', 'star': '3.5', 'ckal': '200'},
  'Pizza': {'time': '15', 'star': '3.0', 'ckal': '250'},
  'Lagmon': {'time': '10', 'star': '4.0', 'ckal': '230'},
  'Burger': {'time': '18', 'star': '2.5', 'ckal': '300'},
  'Somsa': {'time': '30', 'star': '5.0', 'ckal': '500'},
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
            data[food]['time'],
            style: TextStyle(
              color: Colors.grey[400],
            ),
          ),
          Icon(
            Icons.star,
            size: 20,
            color: Colors.yellow[700],
          ),
          Text(data[food]['star'],
              style: TextStyle(
                color: Colors.yellow[700],
              )),
          Icon(
            Icons.local_fire_department,
            size: 20,
            color: Colors.red[300],
          ),
          Text(data[food]['ckal'],
              style: TextStyle(
                color: Colors.red[300],
              )),
        ],
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
