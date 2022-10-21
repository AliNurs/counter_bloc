// ignore_for_file: public_member_api_docs, sort_constructors_first, invalid_use_of_visible_for_testing_member
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<ChangeCountEvents, CountersState> {
  CounterBloc() : super(CountersState(countVal: 0));

  void incrementCount<ChangeColorEvents>() {
    emit(CountersState(countVal: state.countVal + 2));
  }

  void decrementCount<ChangeColorEvents>() {
    if (state.countVal >= 1) {
      emit(CountersState(countVal: state.countVal - 1));
    }
  }
}

class CountersState {
  int countVal;
  CountersState({
    required this.countVal,
  });
}

abstract class ChangeCountEvents {}
