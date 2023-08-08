// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

// i )

//  remove the sealed keyword from the counter state class
@immutable
class CounterState {
  // make the variable where ypu want's to apply the changes on the ui
  int counter;
  // make the constructor & make the variable required in it
  CounterState({
    required this.counter,
  });
}
