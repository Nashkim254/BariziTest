import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  OrdersCubit() : super(const OrdersState(1));
static OrdersCubit get(BuildContext context) => BlocProvider.of(context);

  int currentIndex = 1;

    //change  position
  void switchIndex(int index) {
    currentIndex = index;
    emit(OrdersState(index));
  }
}
