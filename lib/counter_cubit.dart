import 'package:bloc/bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<int>{

  CounterCubit() : super(0);



  void increment(){
    state + 1;
  }

  void decrement(){
    state - 1;
  }

}