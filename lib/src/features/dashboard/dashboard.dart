import 'package:blog_website/src/core/responsive/responsive_builder.dart';
import 'package:blog_website/src/features/mobile/view/pages/mobile_home_page.dart';
import 'package:blog_website/src/features/web/view/page/web_home_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: MobileHomePage(),
        web: WebHomePage()
    );
  }
}
