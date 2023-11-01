import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_object/Cubit/CounterState.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAplus());

  int teamAcounter = 0;
  int teamBcounter = 0;

  void getcurrentcounter({required String team, required int num}) {
    if (team == 'A') {
      teamAcounter += num;
      emit(CounterAplus());
    } else if (team == 'B') {
      teamBcounter += num;
      emit(CounterBplus());
    } else {
      teamAcounter = 0;
      teamBcounter = 0;
      emit(Counterset());
    }
  }
}
