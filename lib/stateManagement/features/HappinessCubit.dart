import 'package:flutter_bloc/flutter_bloc.dart';

class Happinesscubit extends Cubit<int> {
  Happinesscubit() : super(5);
  void updateIndex(int index) {
    emit(index);
  }
}
