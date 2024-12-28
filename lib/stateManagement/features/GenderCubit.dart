import 'package:flutter_bloc/flutter_bloc.dart';

class GenderCubit extends Cubit<String>
{
  GenderCubit() : super('null');
  void isMale() => emit("male");
  void isFemale() => emit("female");
}