
import 'package:flutter_bloc/flutter_bloc.dart';

class Rateyourselcubit extends Cubit<String> {
  Rateyourselcubit() : super("");
  void slimEmit() {
    emit("slim");
  }
  void regularEmit() {
    emit("regular");
  }
  void fatEmit() {
    emit("fat");
  }
}
