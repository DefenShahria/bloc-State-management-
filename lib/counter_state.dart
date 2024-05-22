import 'package:bloc/bloc.dart';

abstract class CounterState{}

class CounterInitialState extends CounterState{}

class IncrementState extends CounterState{
  final String obj;

  IncrementState({required this.obj});
}

class DecrementState extends CounterState{
  final String obj;

  DecrementState({required this.obj});
}

class NewscreenState extends CounterState{
  final String obj;
  final int count;

  NewscreenState({required this.obj,required this.count});

}