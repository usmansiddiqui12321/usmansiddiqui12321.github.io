import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Recommendation.dart';
import 'RecommendationCard.dart';

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
            "Recommendations",
            style: textTheme.titleLarge,
          ),
          SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List<Widget>.generate(
                demo_recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationCard(
                    textTheme: textTheme,
                    recommendation: demo_recommendations[index],
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
