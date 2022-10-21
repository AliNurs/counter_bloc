import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(SuccesState(countValue: 0));
  increment() {
    emit(SuccesState(countValue: state.countValue + 2));
  }

  decrement() {
    if (state.countValue >= 1) {
      emit(SuccesState(countValue: state.countValue - 1));
    }
  }
}

abstract class CounterState {
  int countValue;
  CounterState({
    required this.countValue,
  });
}

class SuccesState extends CounterState {
  SuccesState({required super.countValue});
}
