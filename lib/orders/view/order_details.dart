import 'package:barizi_nashon_test/orders/models/orders_model.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({required this.orderDetails, super.key});
  final OrderModel orderDetails;

  double getSubTotal() {
    var sum = 0.0;
    for (var i = 0; i < orderDetails.items.length; i++) {
      sum += orderDetails.items[i].amount * orderDetails.items[i].quantity;
    }
    return sum;
  }

  @override
  Widget build(BuildContext context) {
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
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: space36,
                      width: space36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: borderColor2),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            size: space16,
                            color: iconColor2,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: space90,
                  ),
                  Text(
                    'Order #${orderDetails.orderRef}',
                    style: ThemeText.blackTextTheme.copyWith(
                      color: blackColor,
                      fontSize: space20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: space30,
              ),
              Container(
                height: space92,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      space10,
                    ),
                  ),
                  color: lightDarkColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(space25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your order is delivered',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space16,
                              color: whiteColor,
                            ),
                          ),
                          Text(
                            'Rate product to get 5 points for collect.',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space10,
                              color: whiteColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/svg/order.svg'),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: space30,
              ),
              Container(
                height: space114,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      space10,
                    ),
                  ),
                  border: Border.all(color: borderColor2),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor.withOpacity(0.2),
                      spreadRadius: space3,
                      blurRadius: space10,
                      offset: const Offset(space0, space3),
                      // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(space16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order number',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: orderColor.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                          Text(
                            '#${orderDetails.orderRef}',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: neutral,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: space10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tracking Number',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: orderColor.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                          Text(
                            orderDetails.trackingNumber,
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: neutral,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: space10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery address',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: orderColor.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                          Text(
                            '#${orderDetails.address}',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: neutral,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: space12,
              ),
              Container(
                height: space247,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      space10,
                    ),
                  ),
                  border: Border.all(color: borderColor2),
                  color: whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor.withOpacity(0.2),
                      spreadRadius: space3,
                      blurRadius: space10,
                      offset: const Offset(space0, space3),
                      // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(space12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  orderDetails.items[index].name,
                                  style: ThemeText.whiteTextTheme.copyWith(
                                    fontSize: space14,
                                    color: orderColor.withOpacity(.5),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Product Sans Light',
                                  ),
                                ),
                                Text(
                                  'X${orderDetails.items[index].quantity}',
                                  style: ThemeText.whiteTextTheme.copyWith(
                                    fontSize: space12,
                                    color: neutral,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Product Sans Medium',
                                  ),
                                ),
                                Text(
                                  '${orderDetails.items[index].amount}',
                                  style: ThemeText.whiteTextTheme.copyWith(
                                    fontSize: space12,
                                    color: neutral,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Product Sans Medium',
                                  ),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, int index) => const SizedBox(
                            height: space12,
                          ),
                          itemCount: orderDetails.items.length,
                        ),
                      ),
                      const SizedBox(
                        height: space10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub Total',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: orderColor.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                          Text(
                            getSubTotal().toString(),
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: neutral,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: space8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: orderColor.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                          Text(
                            '0.0',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: neutral,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: blackColor.withOpacity(.2),
                      ),
                      const SizedBox(
                        height: space8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: orderColor.withOpacity(.5),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                          Text(
                            getSubTotal().toString(),
                            style: ThemeText.whiteTextTheme.copyWith(
                              fontSize: space12,
                              color: neutral,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product Sans Medium',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: space30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: space44,
                      width: space168,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(space24),
                        border: Border.all(color: boxTextColor),
                      ),
                      child: Center(
                        child: Text(
                          'Return home',
                          style: ThemeText.whiteTextTheme.copyWith(
                            fontSize: space14,
                            color: boxTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: space44,
                    width: space119,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(space24),
                      color: rateColor,
                    ),
                    child: Center(
                      child: Text(
                        'Return home',
                        style: ThemeText.whiteTextTheme.copyWith(
                          fontSize: space14,
                          color: whiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
