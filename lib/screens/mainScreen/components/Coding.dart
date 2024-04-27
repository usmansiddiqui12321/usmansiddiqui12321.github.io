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
          percentage: .75,
        ),
        const SizedBox(height: defaultPadding / 2),
        const AnimatedLinearProgressIndicator(
          label: 'MVC',
          percentage: .80,
        ),
        const SizedBox(height: defaultPadding / 2),
        const AnimatedLinearProgressIndicator(
          label: 'MVVM',
          percentage: .80,
        ),
      ],
    );
  }
}
