import 'package:barizi_nashon_test/orders/models/orders_model.dart';
import 'package:barizi_nashon_test/orders/models/tab_model.dart';
import 'package:barizi_nashon_test/orders/orders.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrdersCubit, OrdersState>(
      listener: (context, state) {},
      builder: (context, state) {
        final ordersCubit = OrdersCubit.get(context);
        return Scaffold(
          backgroundColor: whiteColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: space24,
                vertical: space50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/svg/menu.svg',
                        ),
                      ),
                      Text(
                        'My Orders',
                        style: ThemeText.blackTextTheme.copyWith(
                          color: blackColor,
                          fontSize: space20,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/svg/Bell_pin.svg',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: space30,
                  ),
                  Row(
                    children: List.generate(
                      tabs.length,
                      (index) => Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: index != tabs.length - 1 ? space8 : space0,
                          ), // Add space between items
                          child: InkWell(
                            onTap: () => ordersCubit.switchIndex(index),
                            child: buildTabBar(
                              state.index,
                              tabs[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: space30,
                  ),
                  SizedBox(
                    height: getScreenHeight(context),
                    child: ListView.separated(
                       physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, int index) {
                        return buildOrderCard(orders[index]);
                      },
                      separatorBuilder: (context, int index) => const SizedBox(
                        height: space12,
                      ),
                      itemCount: orders.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget buildTabBar(int index, TabModel tabModel) {
    return Container(
      height: space28,
      width: space90,
      decoration: BoxDecoration(
        color: index == tabModel.index ? blackColor2 : null,
        borderRadius: BorderRadius.circular(space30),
      ),
      child: Center(
        child: Text(
          tabModel.label,
          style: ThemeText.whiteTextTheme.copyWith(
            fontSize: space14,
            color: index == tabModel.index ? whiteColor : blackColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget buildOrderCard(OrderModel orderModel) {
    return SizedBox(
      height: space182,
      width: double.infinity,
      child: Card(
        color: whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(space16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order #${orderModel.orderRef}',
                    style: ThemeText.blackTextTheme.copyWith(
                      color: blackColor3,
                      fontSize: space18,
                    ),
                  ),
                  Text(
                    orderModel.date,
                    style: ThemeText.blackTextTheme.copyWith(
                        color: boxTextColor, fontSize: space14, fontFamily: 'Product Sans Medium'),
                  ),
                ],
              ),
              const SizedBox(
                height: space12,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Tracking number:  ',
                      style: ThemeText.blackTextTheme.copyWith(
                        color: boxTextColor,
                        fontSize: space14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: orderModel.trackingNumber,
                      style: ThemeText.blackTextTheme.copyWith(
                        color: blackColor,
                        fontSize: space14,
                        fontFamily: 'Product Sans Medium',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: space12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Quanlity:  ',
                          style: ThemeText.blackTextTheme.copyWith(
                            color: boxTextColor,
                            fontSize: space14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: orderModel.quantity.toString(),
                          style: ThemeText.blackTextTheme.copyWith(
                            color: blackColor,
                            fontSize: space14,
                            fontFamily: 'Product Sans Medium',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Subtotal:  ',
                          style: ThemeText.blackTextTheme.copyWith(
                            color: boxTextColor,
                            fontSize: space14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '\$ ${orderModel.amount}',
                          style: ThemeText.blackTextTheme.copyWith(
                            color: blackColor,
                            fontSize: space14,
                            fontFamily: 'Product Sans Medium',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: space12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    orderModel.status,
                    style: ThemeText.blackTextTheme.copyWith(
                      color: greenColor,
                      fontSize: space18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: space35,
                      width: space100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(space30),
                        border: Border.all(
                          color: boxTextColor,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Details',
                          style: ThemeText.whiteTextTheme.copyWith(
                            fontSize: space14,
                            color: blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
