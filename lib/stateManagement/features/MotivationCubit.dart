import 'package:flutter_bloc/flutter_bloc.dart';

class Motivationcubit extends Cubit<List<bool>> {
  Motivationcubit() : super([false, false, false, false, false]);
  void boolChanged(int index) {
    List<bool> newList = List<bool>.from(state);
    newList[index] = !newList[index];
    emit(newList);
  }
}
