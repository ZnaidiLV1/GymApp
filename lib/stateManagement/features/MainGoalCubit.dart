
import 'package:flutter_bloc/flutter_bloc.dart';

class Maingoalcubit extends Cubit<String> {
  Maingoalcubit() : super("");
  void gainEmit() {
    emit("gain");
  }
  void lossEmit() {
    emit("loss");
  }
}
