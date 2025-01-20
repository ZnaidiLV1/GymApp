
import 'package:flutter_bloc/flutter_bloc.dart';

class StepsCubit extends Cubit<int> {
  StepsCubit() : super(1);
  void nextStep() {
    emit(state + 1);
  }

  void previousStep() {
    emit(state - 1);
  }
}
