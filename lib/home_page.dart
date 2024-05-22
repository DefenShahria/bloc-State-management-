import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('0',style: TextStyle(fontSize: 40),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
                FloatingActionButton(onPressed: (){},child: Icon(Icons.remove),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
