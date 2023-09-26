import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Recommendation.dart';
import 'recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education",
            style: textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List<Widget>.generate(
                demo_Educations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: EducationCard(
                    textTheme: textTheme,
                    education: demo_Educations[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
