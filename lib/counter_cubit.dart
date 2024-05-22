import 'package:bloc/bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState>{

  CounterCubit() : super(CounterInitialState());



  int counter = 0 ;
  void increment(){
    counter ++ ;
    emit(IncrementState(obj: 'Bartase'));
  }

  void decrement(){
    counter -- ;
    emit(DecrementState(obj: 'Komtase'));
  }

  void navigate(){
    if(counter < 10){
      counter ++;
    }else{
      counter --;
    }
    emit(NewscreenState(obj: 'Notun page', count: counter));
  }

}