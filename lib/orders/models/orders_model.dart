class OrderModel {
  OrderModel({
    required this.orderRef,
    required this.quantity,
    required this.trackingNumber,
    required this.date,
    required this.amount,
    required this.status,
    required this.items,
  });
  String orderRef;
  String date;
  String trackingNumber;
  int quantity;
  double amount;
  String status;
  List<Items> items;
}

class Items {
  Items({
    required this.name,
    required this.quantity,
    required this.amount,
  });
  String name;
  int quantity;
  double amount;
}

List<OrderModel> orders = [
  OrderModel(
    orderRef: '1514',
    quantity: 0,
    date: '13/05/2021',
    trackingNumber: 'IK987362341',
    amount: 110,
    status: 'DELIVERED',
    items: [
      Items(
        name: 'Maxi Dress',
        quantity: 1,
        amount: 68,
      ),
      Items(
        name: 'Linen Dress',
        quantity: 1,
        amount: 52,
      ),
    ],
  ),
  OrderModel(
    orderRef: '24456',
    quantity: 1,
    date: '12/05/2021',
    trackingNumber: 'IK3873218890',
    amount: 780,
    status: 'DELIVERED',
    items: [
      Items(
        name: 'Maxi Dress',
        quantity: 1,
        amount: 68,
      ),
      Items(
        name: 'Linen Dress',
        quantity: 1,
        amount: 52,
      ),
    ],
  ),
  OrderModel(
    orderRef: 'Cancelled',
    quantity: 2,
    date: '11/05/2021',
    trackingNumber: 'IK237368881',
    amount: 810,
    status: 'DELIVERED',
    items: [
      Items(
        name: 'Maxi Dress',
        quantity: 1,
        amount: 68,
      ),
      Items(
        name: 'Linen Dress',
        quantity: 1,
        amount: 52,
      ),
    ],
  ),
];
