import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

// We will modify it once we have our final design

class Responsive extends StatelessWidget {
  final dynamic mobile;
  final dynamic extrasmallmobile;
  final dynamic mobileLarge;
  final dynamic tablet;
  final dynamic desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.mobileLarge,
    this.extrasmallmobile,
  }) : super(key: key);

  static bool isExtraSmallMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 372;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width >= 1024) {
      return desktop;
    } else if (size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (size.width >= 500 && mobileLarge != null) {
      return mobileLarge!;
    } else if (size.width >= 372 && mobile != null) {
      return mobile;
    } else {
      return extrasmallmobile!;
    }
  }
}
