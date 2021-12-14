import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String smiley = '🥵';
  Color backgroundColor = Colors.red;
  int degrees = 45;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Wheather App'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              smiley,
              style: TextStyle(fontSize: 100),
            ),
            SizedBox(height: 24),
            Text(
              '$degrees°C',
              style: TextStyle(fontSize: 80, color: Colors.white),
            ),
            TextButton(
                onPressed: changeWeather,
                child: Text(
                  '⭐Change Weather',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  void changeWeather() {
    final counter = Random().nextInt(
        6); // nextInt(2) mane  0 and 1 value hobe, Random().nextInt(2) mane random value 0 or 1 jekono akta hobe
    setState(() {
      switch (counter) {
        case 0:
          smiley = '🥶';
          degrees = nextNumber(min: -20, max: 0); // passing value in function
          backgroundColor = Colors.blueAccent.shade700;
          break;
        case 1:
          smiley = '🥵';
          degrees = nextNumber(min: 30, max: 45); // passing value in function
          backgroundColor = Colors.red;
          break;
        case 2:
          smiley = '☁️';
          degrees = nextNumber(min: 5, max: 20); // passing value in function
          backgroundColor = Colors.deepPurple;
          break;
        case 3:
          smiley = '🌧️';
          degrees = nextNumber(min: 5, max: 20); // passing value in function
          backgroundColor = Colors.purple;
          break;
        case 4:
          smiley = '❄️';
          degrees = nextNumber(min: -5, max: 3); // passing value in function
          backgroundColor = Colors.blueAccent;
          break;
        case 5:
          smiley = '🌥️';
          degrees = nextNumber(min: 20, max: 30); // passing value in function
          backgroundColor = Colors.deepPurple;
          break;
      }
    });
  }

  int nextNumber({required int min, required int max}) => // function
      min +
      Random()
          .nextInt(max - min + 1); //  it will  generate random number 0to-20
}
