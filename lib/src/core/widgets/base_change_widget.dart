import 'package:blog_website/src/core/extensions/build_context_extension.dart';
import 'package:blog_website/src/core/utils/app_color.dart';
import 'package:blog_website/src/core/widgets/k_text.dart';
import 'package:flutter/material.dart';

class BaseChangeWidget extends StatelessWidget {
  const BaseChangeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: context.screenWidth < 1300
          ? context.screenWidth / 1.3
          : context.screenWidth / 2,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           KText(
            text: "From",
            fontSize: context.screenWidth < 800?18:25,
            color: kPrimaryColor,
          ),
          SelectableText.rich(
            cursorColor: Colors.white,
            style: TextStyle(
                fontSize:
                context.screenWidth < 900 ? 15 : 20),
            const TextSpan(
              children: [
                TextSpan(
                    text: "<base",
                    style: TextStyle(
                      color: kPrimaryColor,
                    )),
                TextSpan(
                  text: " href",
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                TextSpan(
                  text: '="\$FLUTTER_BASE_HREF"',
                  style: TextStyle(
                    color: kLightGreen,
                  ),
                ),
                TextSpan(
                  text: '/>',
                  style: TextStyle(color: kPrimaryColor),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
           KText(
            text: "To",
            fontSize: context.screenWidth < 800?18:25,
            color: kPrimaryColor,
          ),
          const SizedBox(height: 5),
          SelectableText.rich(
            style: TextStyle(
                fontSize:
                context.screenWidth < 900 ? 15 : 20),
            scrollPhysics:
            const NeverScrollableScrollPhysics(),
            const TextSpan(
              children: [
                TextSpan(
                    text: "<base",
                    style: TextStyle(
                      color: kPrimaryColor,
                    )),
                TextSpan(
                  text: " href",
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                TextSpan(
                  text: '="',
                  style: TextStyle(
                    color: kLightGreen,
                  ),
                ),
                TextSpan(
                  text:
                  'https://githubusername.github.io/yourrepo/',
                  style: TextStyle(
                    color: kDeepBlue,
                  ),
                ),
                TextSpan(
                  text: '"',
                  style: TextStyle(
                    color: kLightGreen,
                  ),
                ),
                TextSpan(
                  text: '/>',
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
