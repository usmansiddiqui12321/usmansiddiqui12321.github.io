import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GithubButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor.withOpacity(.8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 4.0,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SvgPicture.asset(
                  'assets/icons/github.svg',
                  height: 24.0,
                  width: 24.0,
                  color: secondaryColor,
                ),
              ),
              const SizedBox(width: 4.0),
              if (Responsive.isDesktop(context))
                const Expanded(
                  child: Text(
                    'Github Link',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: secondaryColor,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

void gitlink(String host, BuildContext context) async {
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
