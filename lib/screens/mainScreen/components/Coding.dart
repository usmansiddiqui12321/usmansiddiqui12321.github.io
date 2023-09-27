import 'package:flutter/material.dart';
import 'package:portfolio/components/animated_linear_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Dart',
          percentage: .85,
        ),
        const SizedBox(height: defaultPadding / 2),
        const AnimatedLinearProgressIndicator(
          label: 'Python',
          percentage: .60,
        ),
        const SizedBox(height: defaultPadding / 2),
        const AnimatedLinearProgressIndicator(
          label: 'Java',
          percentage: .40,
        ),
      ],
    );
  }
}
