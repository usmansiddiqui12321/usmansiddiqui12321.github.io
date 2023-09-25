import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import '../../responsive.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
              backgroundColor: bgColor,
            ),
      drawer: const SideMenu(),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Each AnimatedContainer taking 50% screen size
              if (Responsive.isDesktop(context))
                Expanded(
                  // (2+7 =9 ) so 2/9 =  0.22 => 22% of screen
                  flex: 2,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    color: Colors.white,
                    child: const SideMenu(),
                  ),
                ),
              const SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children
                      //Our Footer
                    ],
                  ),
                ),
              ),
              const SizedBox(width: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
