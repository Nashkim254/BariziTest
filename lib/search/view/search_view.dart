import 'package:barizi_nashon_test/home/components/results_component.dart';
import 'package:barizi_nashon_test/home/models/found_results_model.dart';
import 'package:barizi_nashon_test/utils/colors.dart';
import 'package:barizi_nashon_test/utils/spaces.dart';
import 'package:barizi_nashon_test/utils/themes.dart';
import 'package:flutter/material.dart';

class FoundResults extends StatelessWidget {
  const FoundResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
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
                  width: space10,
                ),
                Text(
                  'Dresses',
                  style: ThemeText.blackTextTheme.copyWith(
                    color: blackColor,
                    fontSize: space16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: space20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Found\n152 Results',
                  style: ThemeText.blackTextTheme.copyWith(
                    color: blackColor,
                    fontSize: space20,
                  ),
                ),
                Container(
                  height: space40,
                  width: space97,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(space24),
                    border: Border.all(color: borderColor3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: space16, left: space16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Filter',
                          style: ThemeText.whiteTextTheme.copyWith(
                            fontSize: space14,
                            color: filterColor,
                            fontFamily: 'Product Sans Medium',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: space20,
            ),
            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 1.0 / 2.0,
                crossAxisSpacing: space60,
                children: List.generate(
                  getResults.length,
                  (index) => buildResults(getResults[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
