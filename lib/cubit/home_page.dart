
import 'package:block_code/cubit/counter_cubit.dart';
import 'package:block_code/cubit/counter_state.dart';
import 'package:block_code/cubit/new_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cubit_Homepage extends StatelessWidget {
  const Cubit_Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<CounterCubit , CounterState>(
              listener: (context,state){
                if(state is IncrementState){
                  print(state.obj);
                }else if( state is DecrementState){
                  print(state.obj);
                }else if(state is NewscreenState){
                  if(state.count == 10){
                    print(state.obj);
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> NewScreen()));
                  }
                }
              },
              builder: (BuildContext context, state) {
                print(state);
                return Text('${BlocProvider.of<CounterCubit>(context).counter}',style: const TextStyle(fontSize: 40),);
              },
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(onPressed: (){
                    BlocProvider.of<CounterCubit>(context).increment();
                  },child: const Icon(Icons.add),),
                  FloatingActionButton(onPressed: (){
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },child: const Icon(Icons.remove),),
                ],
              ),
              SizedBox(height: 20,),
              FloatingActionButton(onPressed: (){
                BlocProvider.of<CounterCubit>(context).navigate();
              },child: const Icon(Icons.ac_unit),),
            ],
          ),
          ],
        ),
      ),
    );
  }
}
