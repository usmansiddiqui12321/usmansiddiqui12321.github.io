import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import '../../../constants.dart';
import '../../../models/Project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Responsive(
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
  const ProjectsGridView(
      {Key? key, this.crossAxisCount = 3, this.childAspectRatio = 1.3})
      : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      itemBuilder: (context, index) => Container(
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
            const SizedBox(height: defaultPadding / 2),
            Text(
              demo_projects[index].description!.toString(),
              maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(height: 1.2),
            ),
            // const SizedBox(height: defaultPadding / 2),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Read more >>',
                style: TextStyle(color: primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
