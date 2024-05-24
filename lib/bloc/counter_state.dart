part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class InitialState extends CounterState {}

class IncrementState extends CounterState {}
class DecrementState extends CounterState {}

