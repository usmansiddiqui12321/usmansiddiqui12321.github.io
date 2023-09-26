
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/Detailed%20Screen/Components/github_button.dart';
import 'package:portfolio/screens/Detailed%20Screen/detailed_screen.dart';

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({
    Key? key,
    required this.size,
    required this.widget,
  }) : super(key: key);

  final Size size;
  final DetailedPage widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 2),
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: secondaryColor,
              border: Border.all(
                color: primaryColor,
                width: 2,
              ),
            ),
            height: descriptionHeight(context: context, size: size),
            width: Responsive.isMobileLarge(context) ||
                    Responsive.isMobile(context)
                ? size.width * 0.8
                : size.width * 0.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Description",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SingleChildScrollView(
                    primary: true,
                    dragStartBehavior: DragStartBehavior.start,
                    scrollDirection: Axis.vertical,
                    child: SelectableText(
                      widget.description,
                      style: const TextStyle(height: 1.2),
                      maxLines: Responsive.isMobileLarge(context) ? 7 : 8,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GithubButton(onPressed: () {
              gitlink(widget.gitlink, context);
            }),
          ),
        ],
      ),
    );
  }
}

double descriptionHeight({required BuildContext context, required Size size}) {
  late double descriptionheight;
  if (Responsive.isMobileLarge(context) && Responsive.isTablet(context)) {
    descriptionheight = 230;
  } else if (Responsive.isMobileLarge(context) &&
      Responsive.isTablet(context) &&
      Responsive.isMobile(context)) {
    descriptionheight = size.height * .3;
  } else if (Responsive.isDesktop(context)) {
    descriptionheight = 250;
  } else if (Responsive.isDesktop(context) && Responsive.isTablet(context)) {
    descriptionheight = size.height * .4;
  } else {
    descriptionheight = 230;
  }

  return descriptionheight;
}

double descriptionWidth({required BuildContext context, required Size size}) {
  late double descriptionwidth;
  if (Responsive.isMobileLarge(context) && Responsive.isTablet(context)) {
    descriptionwidth = size.width * .8;
  } else if (Responsive.isMobileLarge(context) &&
      Responsive.isTablet(context) &&
      Responsive.isMobile(context)) {
    descriptionwidth = size.width * .8;
  } else if (Responsive.isDesktop(context)) {
    descriptionwidth = size.width * .4;
  } else if (Responsive.isDesktop(context) && Responsive.isTablet(context)) {
    descriptionwidth = size.width * .4;
  } else {
    descriptionwidth = size.width * .4;
  }

  return descriptionwidth;
}
