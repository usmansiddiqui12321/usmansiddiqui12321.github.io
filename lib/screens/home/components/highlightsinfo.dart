import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import '../../../components/Animated_counter.dart';
import '../../../constants.dart';
import 'highlights.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: (defaultPadding + 10), horizontal: defaultPadding / 2),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          if (screenWidth < 372) {
            // Render content for screens less than 372 width
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HighLights(
                  counter: AnimatedCounter(
                    text: 'th',
                    value: 4,
                  ),
                  label: " Year of University",
                ),
                HighLights(
                  counter: AnimatedCounter(
                    text: '+',
                    value: 2,
                  ),
                  label: " years of Practice",
                ),
                SizedBox(height: defaultPadding),
                HighLights(
                  counter: AnimatedCounter(
                    text: '+',
                    value: 20,
                  ),
                  label: " GitHub Repositories",
                ),
                HighLights(
                  counter: AnimatedCounter(
                    text: '',
                    value: 2,
                  ),
                  label: " Courses",
                ),
              ],
            );
          } else if (screenWidth >= 372 && Responsive.isMobileLarge(context)) {
            // Render content for screens 372 width or larger
            return const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLights(
                      counter: AnimatedCounter(
                        text: 'th',
                        value: 4,
                      ),
                      label: " Year of University",
                    ),
                    HighLights(
                      counter: AnimatedCounter(
                        text: '+',
                        value: 2,
                      ),
                      label: " years of Practice",
                    ),
                  ],
                ),
                SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLights(
                      counter: AnimatedCounter(
                        text: '+',
                        value: 20,
                      ),
                      label: " GitHub Repositories",
                    ),
                    HighLights(
                      counter: AnimatedCounter(
                        text: '',
                        value: 2,
                      ),
                      label: " Courses",
                    ),
                  ],
                ),
              ],
            );
          } else {
            return const Padding(
              padding: EdgeInsets.symmetric(
                vertical: defaultPadding,
                horizontal: defaultPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HighLights(
                    counter: AnimatedCounter(
                      text: 'th',
                      value: 4,
                    ),
                    label: " Year of University",
                  ),
                  HighLights(
                    counter: AnimatedCounter(
                      text: '+',
                      value: 2,
                    ),
                    label: " years of Practicing",
                  ),
                  HighLights(
                    counter: AnimatedCounter(
                      text: '+',
                      value: 20,
                    ),
                    label: " GitHub Projects",
                  ),
                  HighLights(
                    counter: AnimatedCounter(
                      text: '',
                      value: 2,
                    ),
                    label: " Courses",
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
