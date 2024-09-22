import 'package:blog_website/src/core/extensions/build_context_extension.dart';
import 'package:blog_website/src/core/services/url_launcher_service.dart';
import 'package:blog_website/src/core/utils/app_color.dart';
import 'package:blog_website/src/core/utils/assets_path.dart';
import 'package:blog_website/src/core/widgets/base_change_widget.dart';
import 'package:blog_website/src/core/widgets/command_section.dart';
import 'package:blog_website/src/core/widgets/k_icon_change_widget.dart';
import 'package:blog_website/src/core/widgets/k_text.dart';
import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KText(
                    text: "How to build flutter web",
                    fontSize: context.screenWidth < 800 ? 30 : 45,
                    color: kGreen,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KText(
                        text: "Change Website Icon:",
                        fontSize: context.screenWidth < 800 ? 22 : 30,
                        color: kDeepBlue,
                        fontWeight: FontWeight.bold,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          KText(
                            text: "1. Design an app icon",
                            fontSize: context.screenWidth < 800 ? 16 : 25,
                          ),
                          Row(
                            children: [
                              KText(
                                text: "2. Generate favicon icon 16x16",
                                fontSize: context.screenWidth < 800 ? 16 : 25,
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                  onTap: () {
                                    UrlLauncherService.openWebSite(
                                        "https://favicon.io/favicon-converter/");
                                  },
                                  child: KText(
                                    text: "favicon.io",
                                    fontSize:
                                    context.screenWidth < 800 ? 16 : 30,
                                    color: kDeepBlue,
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: context.screenWidth < 800
                                ? context.screenWidth / 1.2
                                : context.screenWidth / 2,
                            child: KText(
                              text:
                              "3. Go to the Flutter project web folder . replace favicon.png which own generated",
                              fontSize: context.screenWidth < 1000 ? 16 : 25,
                            ),
                          ),

                          SizedBox(
                            width: context.screenWidth < 800
                                ? context.screenWidth / 1.2
                                : context.screenWidth / 2,
                            child: KText(
                              text:
                              "4. Change these lines in web folder index.html file",
                              fontSize: context.screenWidth < 1000 ? 16 : 25,
                            ),
                          ),











                          const SizedBox(height: 20),
                           const KIconChangeWidget(),
                          const SizedBox(height: 20),
                          SizedBox(
                            width: context.screenWidth < 800
                                ? context.screenWidth / 1.2
                                : context.screenWidth / 2,
                            child: KText(
                              text:
                              "4. Change will be all icons in icons folder from web folder.",
                              fontSize: context.screenWidth < 1000 ? 16 : 25,
                            ),
                          ),
                          const SizedBox(height: 30),
                          const KText(
                            text: "Host on Github",
                            fontSize: 25,
                            color: kSecondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                          KText(
                            text: "1. Create a github repository.",
                            fontSize: context.screenWidth < 800 ? 16 : 25,
                          ),
                          KText(
                            text: "2. Then run",
                            fontSize: context.screenWidth < 800 ? 16 : 25,
                          ),
                          const CommandSection(),
                          SizedBox(
                            width: context.screenWidth < 1000
                                ? context.screenWidth / 1.2
                                : context.screenWidth / 2,
                            child: KText(
                              text:
                              "3. Create will be a build folder in the project . and instead of the build folder will be created a web folder.",
                              fontSize: context.screenWidth < 800 ? 16 : 25,
                            ),
                          ),
                          SizedBox(
                            width: context.screenWidth < 1000
                                ? context.screenWidth / 1.2
                                : context.screenWidth / 2,
                            child: KText(
                              text:
                              "4. Change this line from the web folder in the index.html file in the build folder which was created. ",
                              fontSize: context.screenWidth < 800 ? 16 : 25,
                            ),
                          ),
                          const BaseChangeWidget(),
                          SizedBox(
                            width: context.screenWidth < 800
                                ? context.screenWidth / 1.2
                                : context.screenWidth / 2,
                            child: KText(
                              text:
                              "5. Upload all file in github repository from web folder which built ",
                              fontSize: context.screenWidth < 1000 ? 16 : 25,
                            ),
                          ),

                          SizedBox(
                            width: context.screenWidth < 1000
                                ? context.screenWidth / 1.2
                                : context.screenWidth / 2,
                            child: KText(
                              text:
                              "6. Go to github repository settings here can see a pages section. Click pages and change will be none to main. Click save.",
                              fontSize: context.screenWidth < 800 ? 16 : 25,
                            ),
                          ),
                          KText(
                            text: "7. Reload the github repo.",
                            fontSize: context.screenWidth < 1000 ? 16 : 25,
                          ),
                          KText(
                            text: "8. Edit about to put website url ",
                            fontSize: context.screenWidth < 800 ? 16 : 25,
                          ),
                          KText(
                            text: "The About ScreenShot",
                            fontSize: context.screenWidth < 1000 ? 16 : 25,
                          ),
                          Image.asset(
                            width: context.screenWidth / 1.3,
                            AssetsPath.aboutScreenShot,
                            fit: BoxFit.cover,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
