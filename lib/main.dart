import 'package:block_code/bloc/counter_bloc.dart';
import 'package:block_code/bloc/counter_home.dart';
import 'package:block_code/cubit/counter_cubit.dart';
import 'package:block_code/cubit/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home:  BlocProvider(create: (BuildContext context)=>CounterBloc(), child: const Bloc_homepage()),
    );
  }
}
