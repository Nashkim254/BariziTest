import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: ThemeText.blackTextTheme.copyWith(
            fontSize: space22,
          ),
        ),
      ),
    );
  }
}
