import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.05),
                ),
                if (!Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                const AnimatedBuildText(
                  istop: true,
                  textOne: "Responsive Web and Mobile Application",
                  textTwo: "Complete E-Commerce App UI",
                  textThree: "Chat App with Dark and Light Theme",
                ),
                const SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {
                      exploreNow(
                          "https://github.com/usmansiddiqui12321", context);
                    },
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor),
                    child: const Text(
                      "Explore Now",
                      style: TextStyle(color: darkColor),
                    ),
                  ),
                // const AnimatedBuildText(
                //   istop: true,
                //   textOne: "Responsive Web and Mobile Application",
                //   textTwo: "Complete E-Commerce App UI",
                //   textThree: "Chat App with Dark and Light Theme",
                // ),
                const SizedBox(height: defaultPadding / 2),
                const AnimatedBuildText(
                  istop: false,
                  textOne:
                      "Early projects mark my journey's start, still learning each day.",
                  textTwo:
                      "Always growing, exploring, expanding knowledge's vast domain.",
                  textThree:
                      "Portfolio site reflects progress, showcasing my evolving skills proudly.",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AnimatedBuildText extends StatelessWidget {
  final String textOne, textTwo, textThree;
  final bool istop;

  const AnimatedBuildText({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.textThree,
    required this.istop,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      //It Applies same style to all the widgets under it
      maxLines: 1,
      style: Theme.of(context).textTheme.titleMedium!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          istop ? const Text("I build ") : const SizedBox.shrink(),
          Responsive.isMobile(context)
              ? Expanded(
                  child: AnimatedText(
                  textOne: textOne,
                  textTwo: textTwo,
                  textThree: textThree,
                ))
              : AnimatedText(
                  textOne: textOne,
                  textTwo: textTwo,
                  textThree: textThree,
                ),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  final String textOne, textTwo, textThree;
  const AnimatedText({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.textThree,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(textOne, speed: const Duration(milliseconds: 60)),
        TyperAnimatedText(textTwo, speed: const Duration(milliseconds: 60)),
        TyperAnimatedText(textThree, speed: const Duration(milliseconds: 60)),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(text: "<", children: [
      TextSpan(
        text: "Flutter",
        style: TextStyle(color: primaryColor),
      ),
      TextSpan(text: ">")
    ]));
  }
}

void exploreNow(String host, BuildContext context) async {
  Uri url = Uri.parse(host);
  // ignore: use_build_context_synchronously
  if (kIsWeb) {
    if (await canLaunchUrl(url)) {
      try {
        await launchUrl(
          url,
          mode: LaunchMode.platformDefault,
        );
      } catch (e) {
        throw "Can't Launch Link due to : $e";
      }
    }
  } else {
    if (!await canLaunchUrl(url)) {
      try {
        await launchUrl(
          url,
          mode: LaunchMode.platformDefault,
        );
      } catch (e) {
        throw "Can't Launch Link due to : $e";
      }
    }
  }
}
