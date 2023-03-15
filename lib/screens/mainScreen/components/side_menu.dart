import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../responsive.dart';
import 'Area_info_Text.dart';
import 'Coding.dart';
import 'Knowledges.dart';
import 'Skills.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                  const AreaInfoText(
                    title: "Age",
                    text: "22",
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
                      onPressed: () {},
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
            // 'https://github.com/usmansiddiqui12321'
            profile('https://www.linkedin.com/in/usman-siddiqui-6b1b0821b/',
                context);
          },
          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
        ),
        IconButton(
          onPressed: () {
            // 'https://github.com/usmansiddiqui12321'
            profile(
                'https://github.com/lakshydeep-14/30FlutterTips/blob/new/pubspec.yaml',
                context);
          },
          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
        ),
        IconButton(
          onPressed: () {
            // 'https://github.com/usmansiddiqui12321'
            profile('https://www.linkedin.com/in/usman-siddiqui-6b1b0821b/',
                context);
          },
          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
        ),
        const Spacer(),
      ]),
    );
  }
}

void profile(String host, BuildContext context) async {
  Uri url = Uri.parse(host);
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
}
