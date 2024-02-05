import 'package:barizi_nashon_test/home/view/home_view.dart';
import 'package:barizi_nashon_test/l10n/l10n.dart';
import 'package:barizi_nashon_test/splashscreen/splash.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:barizi_nashon_test/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashCubit(),
      child: const SplashView(),
    );
  }
}

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashScreenState>(
      builder: (context, state) {
        return const Splash();
      },
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Stack(
      children: [
        Image.asset(
          'assets/images/splash.png',
          height: getScreenHeight(context),
          width: getScreenWidth(context),
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: space60,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                l10n.welcome,
                style: ThemeText.whiteTextTheme.copyWith(
                  fontSize: space24,
                ),
              ),
              Text(
                l10n.fashionista,
                style: ThemeText.whiteTextTheme.copyWith(
                  fontSize: space16,
                ),
              ),
              const SizedBox(
                height: space40,
              ),
              Button(
                label: l10n.splashButtonLabel,
                callback: () => Navigator.push(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (_) => const HomeView(),
                  ),
                ),
                buttonColor: whiteColor.withOpacity(.25),
                borderColor: whiteColor,
                style: ThemeText.whiteTextTheme.copyWith(
                  fontSize: space16,
                ),
                height: space53,
                width: space193,
                radius: space30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
