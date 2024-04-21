import 'package:flutter/material.dart';

// ignore: camel_case_types
class myinfo extends StatelessWidget {
  const myinfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xff242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  "assets/images/linkedInProfile.png",
                )),
            const Spacer(),
            Text(
              "Muhammad Usman Siddiqui",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            const Text("Flutter Developer",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5)),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
