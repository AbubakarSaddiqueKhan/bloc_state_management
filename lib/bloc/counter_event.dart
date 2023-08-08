part of 'counter_bloc.dart';

//  removed the sealed keyword from the counter state class and add the abstract keyword in it

// counter event is the  abstract class that is inherited
@immutable
abstract class CounterEvent {}

// make all of the possible events that you want's to perform or that will effect when the state change or on the bases of which the state is changed

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}
