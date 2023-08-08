import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

//  iii )

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc()
      :
        // in super you need's to add the state in which there is going to some change (or which cause the change in the ui)

        super(CounterState(counter: 0)) {
    //  here make the all possible event's that are going to change the ui or change the state
    //  here you can register al possible events
    on<IncrementCounterEvent>((event, emit) {
      emit(CounterState(counter: state.counter + 1));
    });

    on<DecrementCounterEvent>((event, emit) {
      emit(CounterState(counter: state.counter - 1));
    });
  }
}
