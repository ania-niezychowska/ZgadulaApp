import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Zgadula'),
          backgroundColor: Colors.teal,
        ),
        body: const AppPage(),
      ),
    ),
  );
}

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int pictureNumber = 1;


  void changeImage() {
    setState(() {
      pictureNumber = Random().nextInt(10) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/$pictureNumber.png',
              ),
              onPressed: () {
                changeImage();
              },
            ),
          ),
        ],
      ),
    );
  }
}