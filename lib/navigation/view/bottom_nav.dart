import 'package:barizi_nashon_test/home/view/home_view.dart';
import 'package:barizi_nashon_test/navigation/cubit/navigation_cubit.dart';
import 'package:barizi_nashon_test/orders/view/orders_view.dart';
import 'package:barizi_nashon_test/profile/profile.dart';
import 'package:barizi_nashon_test/search/search.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeDashBoardScreen extends StatelessWidget {
  const HomeDashBoardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return BlocConsumer<NavigationCubit, NavigationState>(
      listener: (context, state) {
        print(state.index);
      },
      builder: (context, state) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: shadedWhiteColor,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: Container(
            height: space80,
            decoration: BoxDecoration(
                border: Border.all(color: borderColor2),
                color: Colors.transparent,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(space30),
                  topRight: Radius.circular(space30),
                )),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: greyColor,
              selectedItemColor: primaryColor,
              currentIndex: state.index,
              backgroundColor: whiteColor,
              // selectedItemColor: colorScheme.onSurface,
              // unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
              // selectedLabelStyle: textTheme.caption,
              // unselectedLabelStyle: textTheme.caption,
              onTap: (value) {
                // Respond to item press.
                context.read<NavigationCubit>().switchIndex(value);
              },
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svg/home.svg',
                    colorFilter: ColorFilter.mode(
                      state.index == 0 ? blackColor : greyColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: '',
                  backgroundColor: whiteColor,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svg/search.svg',
                    colorFilter: ColorFilter.mode(
                      state.index == 1 ? blackColor : greyColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  backgroundColor: whiteColor,
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svg/basket.svg',
                    colorFilter: ColorFilter.mode(
                      state.index == 2 ? blackColor : greyColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  backgroundColor: whiteColor,
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/svg/profile.svg',
                    colorFilter: ColorFilter.mode(
                      state.index == 3 ? blackColor : greyColor,
                      BlendMode.srcIn,
                    ),
                  ),
                  backgroundColor: whiteColor,
                  label: '',
                ),
              ],
            ),
          ),
          body: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
              return navigateToScreen(state.index, context);
            },
          ),
        );
      },
    );
  }

  Widget navigateToScreen(int index, BuildContext context) {
    return switch (index) {
      0 => const HomeView(),
      1 => const FoundResults(),
      2 => const OrdersView(),
      3 => const Profile(),
      _ => const HomeView(),
    };
  }
}
