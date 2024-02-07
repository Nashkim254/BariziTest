import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Search',
          style: ThemeText.blackTextTheme.copyWith(
            fontSize: space22,
          ),
        ),
      ),
    );
  }
}
