import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpC {
  String gender;
  TextEditingController email;
  TextEditingController password;
  int age;
  int height;
  int weight;

  SignUpC({
    required this.gender,
    required this.email,
    required this.password,
    required this.age,
    required this.height,
    required this.weight,
  });
}

class SignUpCubit extends Cubit<SignUpC> {
  SignUpCubit()
      : super(SignUpC(
          gender: 'Not Specified',
          email: TextEditingController(),
          password: TextEditingController(),
          age: 20,
          height: 160,
          weight: 60,
        ));

  void updateEmail(String email) {
    state.email.text = email;
    emit(SignUpC(
      gender: state.gender,
      email: state.email,
      password: state.password,
      age: state.age,
      height: state.height,
      weight: state.weight,
    ));
  }

  void updatePassword(String password) {
    state.password.text = password;
    emit(SignUpC(
      gender: state.gender,
      email: state.email,
      password: state.password,
      age: state.age,
      height: state.height,
      weight: state.weight,
    ));
  }

  void updateGender(String gender) {
    emit(SignUpC(
      gender: gender,
      email: state.email,
      password: state.password,
      age: state.age,
      height: state.height,
      weight: state.weight,
    ));
  }

  void updateAge(int age) {
    emit(SignUpC(
      gender: state.gender,
      email: state.email,
      password: state.password,
      age: age,
      height: state.height,
      weight: state.weight,
    ));
  }

  void updateHeight(int height) {
    emit(SignUpC(
      gender: state.gender,
      email: state.email,
      password: state.password,
      age: state.age,
      height: height,
      weight: state.weight,
    ));
  }

  void updateWeight(int weight) {
    emit(SignUpC(
      gender: state.gender,
      email: state.email,
      password: state.password,
      age: state.age,
      height: state.height,
      weight: weight,
    ));
  }
}
