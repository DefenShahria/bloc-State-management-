import 'package:flutter/material.dart';

class Bloc_homepage extends StatefulWidget {
  const Bloc_homepage({super.key});

  @override
  State<Bloc_homepage> createState() => _Bloc_homepageState();
}

class _Bloc_homepageState extends State<Bloc_homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('0',style: TextStyle(fontSize: 30),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(onPressed: (){},child: Icon(Icons.ac_unit),),
                FloatingActionButton(onPressed: (){},child: Icon(Icons.delete),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
