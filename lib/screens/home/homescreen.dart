import 'package:flutter/material.dart';
import 'package:portfolio/screens/mainScreen/main_screen.dart';
import 'components/MyProjects.dart';
import 'components/Recommendations.dart';
import 'components/highlightsinfo.dart';
import 'components/homebanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return MainScreen(
      children: [
        const HomeBanner(),
        const HighlightsInfo(),
        const MyProjects(),
        Recommendations(textTheme: textTheme)
      ],
    );
  }
}
