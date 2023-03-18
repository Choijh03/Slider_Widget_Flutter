import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //create variable
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            _currentValue.toString(),
            style: TextStyle(fontSize: 35),
          ),
          Slider(
            value: _currentValue,
            min: 0,
            max: 10,
            //make it as 4 10/4 options avaiable
            //which means it grows by 2.5
            divisions: 4,
            label: _currentValue.toString(),
            //filled up color
            activeColor: Colors.amber,
            //non filled up color
            inactiveColor: Colors.blue,
            //circle color
            thumbColor: Colors.black,
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
          )
        ],
      ),
    );
  }
}
