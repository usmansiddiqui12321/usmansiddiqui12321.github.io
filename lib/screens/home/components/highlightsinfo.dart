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
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HighLights(
                      counter: AnimatedCounter(
                        text: 'K+',
                        value: 119,
                      ),
                      label: "Subscriber",
                    ),
                    HighLights(
                      counter: AnimatedCounter(
                        text: '+',
                        value: 40,
                      ),
                      label: "Videos",
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
                          value: 30,
                        ),
                        label: "GitHub Projects",
                      ),
                      HighLights(
                        counter: AnimatedCounter(
                          text: 'K+',
                          value: 13,
                        ),
                        label: "Stars",
                      ),
                    ])
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HighLights(
                  counter: AnimatedCounter(
                    text: 'K+',
                    value: 119,
                  ),
                  label: "Subscriber",
                ),
                HighLights(
                  counter: AnimatedCounter(
                    text: '+',
                    value: 40,
                  ),
                  label: "Videos",
                ),
                HighLights(
                  counter: AnimatedCounter(
                    text: '+',
                    value: 30,
                  ),
                  label: "GitHub Projects",
                ),
                HighLights(
                  counter: AnimatedCounter(
                    text: 'K+',
                    value: 13,
                  ),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
