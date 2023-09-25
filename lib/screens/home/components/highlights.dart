import 'package:flutter/material.dart';

import '../../../constants.dart';

class HighLights extends StatelessWidget {
  const HighLights({
    super.key,
    required this.counter,
    this.label,
  });
  final Widget counter;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        counter,
        const SizedBox(height: defaultPadding / 2),
        SizedBox(
          child: Text(
            label!,
            style: Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
