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
          vertical: defaultPadding, horizontal: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
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
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
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
                    ])
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
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
}
