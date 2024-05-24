import 'package:block_code/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                print(state);
                return Text('${BlocProvider.of<CounterBloc>(context).count}', style: const TextStyle(fontSize: 30),);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
                  }, child: const Icon(Icons.ac_unit),),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
                  }, child: const Icon(Icons.delete),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
