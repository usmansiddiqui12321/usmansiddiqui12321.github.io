import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'skills.dart';
import 'my_info.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class SideMenu extends StatelessWidget {
  String calculateAgeString(int birthYear, int birthMonth) {
    DateTime currentDate = DateTime.now();
    int currentYear = currentDate.year;
    int currentMonth = currentDate.month;

    int ageYears = currentYear - birthYear;
    int ageMonths = currentMonth - birthMonth;

    if (ageMonths < 0) {
      ageYears--;
      ageMonths += 12;
    }

    if (ageYears == 0) {
      return '$ageMonths months old';
    } else if (ageMonths == 0) {
      return '$ageYears years old';
    } else {
      return '$ageYears';
    }
  }

// void main() {

//   print('Age string: $ageString');
// }

  const SideMenu({
    super.key,
  });
  final int birthYear = 2001; // Replace this with your birth year
  final int birthMonth = 11;
  @override
  Widget build(BuildContext context) {
    // Replace this with your birth month
    String ageString = calculateAgeString(birthYear, birthMonth);
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(0), bottomRight: Radius.circular(0)),
      ),
      backgroundColor: bgColor,
      child: Column(
        children: [
          const myinfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const AreaInfoText(
                    title: "Residence",
                    text: "Pakistan",
                  ),
                  const AreaInfoText(
                    title: "City",
                    text: "Karachi",
                  ),
                  AreaInfoText(
                    title: "Age",
                    text: ageString,
                  ),
                  const Skills(),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Coding(),
                  const Knowledges(),
                  const Divider(),
                  const SizedBox(height: defaultPadding / 2),
                  TextButton(
                      onPressed: () {
                        profile(
                            'https://drive.google.com/uc?export=download&id=1wxvFmN5TtqXHRx6AHm5tzxrsWrUDCbKn',
                            context);
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "Download CV",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      )),
                  const CVconnections()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CVconnections extends StatelessWidget {
  const CVconnections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      color: const Color(0xff24242E),
      child: Row(children: [
        const Spacer(),
        IconButton(
          onPressed: () {
            profile(
                'https://www.linkedin.com/in/muhammad-usman-siddiqui-0300d/',
                context);
          },
          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
        ),
        IconButton(
          onPressed: () {
            profile('https://github.com/usmansiddiqui12321/', context);
          },
          icon: SvgPicture.asset("assets/icons/github.svg"),
        ),
        IconButton(
          onPressed: () {
            profile('https://twitter.com/MUsman12321/', context);
          },
          icon: SvgPicture.asset("assets/icons/twitter.svg"),
        ),
        const Spacer(),
      ]),
    );
  }
}

void profile(String host, BuildContext context) async {
  Uri url = Uri.parse(host);
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
