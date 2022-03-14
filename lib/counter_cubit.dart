import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_provider/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitState());
  static CounterCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  int number = 1;
  void increaseNumber() {
    number++;
    emit(CounterIncrease());
  }

  void decreaseNumber() {
    number--;
    emit(Counterdecrease());
  }
}
