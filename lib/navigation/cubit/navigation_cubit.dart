import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(0));
  static NavigationCubit get(BuildContext context) => BlocProvider.of(context);
  int currentIndex = 0;

  //change bottom navigation position
  void switchIndex(int index) {
    currentIndex = index;
    emit(NavigationState(index));
  }
}
