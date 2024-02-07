part of 'orders_cubit.dart';

class OrdersState extends Equatable {
  const OrdersState(this.index);
  final int index;
  @override
  List<Object> get props => [index];
}
