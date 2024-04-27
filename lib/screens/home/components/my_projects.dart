import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/Detailed%20Screen/detailed_screen.dart';
import '../../../constants.dart';
import '../../../models/project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "My Projects",
            style: Theme.of(context).textTheme.titleLarge,
          ).paddingOnly(bottom: 20),
        ),
        const Responsive(
            extrasmallmobile: ProjectsGridView(
              childAspectRatio: 1.7,
              crossAxisCount: 1,
            ),
            mobile: ProjectsGridView(
              childAspectRatio: 1.7,
              crossAxisCount: 1,
            ),
            mobileLarge: ProjectsGridView(
              crossAxisCount: 2,
            ),
            tablet: ProjectsGridView(
              childAspectRatio: 1.1,
            ),
            desktop: ProjectsGridView())
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;
  // final void Function() NextPage;
  // final String videoPath;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Get.to(DetailedPage(
            videoPath: demo_projects[index].videopath!.toString(),
            title: demo_projects[index].title!.toString(),
            description: demo_projects[index].description!.toString(),
            gitlink: demo_projects[index].gitlink!.toString(),
          ));
        },
        child: Container(
          decoration: BoxDecoration(
              color: secondaryColor, borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.all(defaultPadding),
          child: Wrap(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                demo_projects[index].title!.toString(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: defaultPadding),
              Text(
                demo_projects[index].description!.toString(),
                maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(height: 1.2),
              ),
              // const SizedBox(height: defaultPadding / 2),
              TextButton(
                onPressed: () {
                  Get.to(DetailedPage(
                    videoPath: demo_projects[index].videopath!.toString(),
                    description: demo_projects[index].description!.toString(),
                    gitlink: demo_projects[index].gitlink!.toString(),
                    title: demo_projects[index].title!.toString(),
                  ));
                },
                child: const Text(
                  'Read more >>',
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
