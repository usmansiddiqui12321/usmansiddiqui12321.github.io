import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'highlights.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Widget calculateExperience(DateTime startDate) {
      final currentDate = DateTime.now();
      final difference = currentDate.difference(startDate);
      final months =
          difference.inDays ~/ 30; 
      if (months >= 12) {
        final years = months ~/ 12;
        if (years == 1) {
          return Row(
            children: [
              Text(
                '1+ ',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: primaryColor),
              ),
              Text(
                'year of experience',
                style: Theme.of(context).textTheme.titleSmall,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        } else {
          return Row(
            children: [
              Text(
                '$months+ ',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: primaryColor),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'months of experience',
                style: Theme.of(context).textTheme.titleSmall,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        }
      } else {
        return Row(
          children: [
            Text(
              '$months+ ',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: primaryColor),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'months of experience',
              style: Theme.of(context).textTheme.titleSmall,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: (defaultPadding + 10), horizontal: defaultPadding / 2),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          if (screenWidth < 372) {
            // Render content for screens less than 372 width
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const HighLights(
                  counter: AnimatedCounter(
                    text: 'th',
                    value: 4,
                  ),
                  label: " Year of University",
                ),
                HighLights(
                  counter: calculateExperience(DateTime(2023, 9, 1)),
                  label: "",
                ),
                const SizedBox(height: defaultPadding),
                const HighLights(
                  counter: AnimatedCounter(
                    text: '+',
                    value: 20,
                  ),
                  label: " GitHub Repositories",
                ),
                const HighLights(
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
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HighLights(
                      counter: AnimatedCounter(
                        text: 'th',
                        value: 4,
                      ),
                      label: " Year of University",
                    ),
                    HighLights(
                      counter: calculateExperience(DateTime(2023, 9, 1)),
                      label: "",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                const Row(
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
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: defaultPadding,
                horizontal: defaultPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const HighLights(
                    counter: AnimatedCounter(
                      text: 'th',
                      value: 4,
                    ),
                    label: " Year of University",
                  ),
                  HighLights(
                    counter: calculateExperience(DateTime(2023, 9, 1)),
                    label: "",
                  ),
                  const HighLights(
                    counter: AnimatedCounter(
                      text: '+',
                      value: 20,
                    ),
                    label: " GitHub Projects",
                  ),
                  const HighLights(
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
