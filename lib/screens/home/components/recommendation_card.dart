import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Recommendation.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    super.key,
    required this.textTheme,
    required this.education,
  });
  final Education education;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            education.name!,
            style: textTheme.titleSmall,
          ),
          Text(
            education.source!,
          ),
          const SizedBox(height: defaultPadding),
          Text(
            education.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
