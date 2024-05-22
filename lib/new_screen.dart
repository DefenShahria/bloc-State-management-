import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('New Screen is here',style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}
