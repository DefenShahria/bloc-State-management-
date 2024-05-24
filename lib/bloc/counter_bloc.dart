import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  int count = 0 ;

  CounterBloc() : super(InitialState()) {
    on<IncrementEvent>((event, emit) {
      count ++;
      emit(IncrementState());
    });
    on<DecrementEvent>((event, emit) {
      count --;
      emit(DecrementState());
    });
  }
}
