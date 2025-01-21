import 'package:flutter_bloc/flutter_bloc.dart';

class Targetbodycubit extends Cubit<List<bool>> {
  Targetbodycubit() : super([false, false, false, false, false]);
  void changeBool(int index) {
    List<bool> newState = List<bool>.from(state);
    newState[index] = !newState[index];
    emit(newState);
  }
}
