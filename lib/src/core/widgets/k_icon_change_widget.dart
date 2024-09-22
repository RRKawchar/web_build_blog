import 'package:blog_website/src/core/extensions/build_context_extension.dart';
import 'package:blog_website/src/core/utils/app_color.dart';
import 'package:blog_website/src/core/widgets/k_text.dart';
import 'package:flutter/material.dart';

class KIconChangeWidget extends StatelessWidget {
  const KIconChangeWidget({super.key});

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
            text: "Replace the line",
            fontSize:context.screenWidth < 800?18: 25,
            color: kPrimaryColor,
          ),
          SelectableText.rich(
            cursorColor: Colors.white,
            style: TextStyle(
                fontSize:
                context.screenWidth < 900 ? 12 : 20),
            const TextSpan(
              children: [
                TextSpan(
                    text: "<link",
                    style: TextStyle(
                      color: kPrimaryColor,
                    )),
                TextSpan(
                  text: " rel",
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                TextSpan(
                  text: '="icon"',
                  style: TextStyle(
                    color: kLightGreen,
                  ),
                ),
                TextSpan(
                  text: ' type',
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                TextSpan(
                  text: '="image/png" ',
                  style: TextStyle(
                    color: kLightGreen,
                  ),
                ),
                TextSpan(
                  text: 'href',
                  style: TextStyle(color: kGrey),
                ),
                TextSpan(
                  text: '="favicon.png"',
                  style: TextStyle(color: kLightGreen),
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
            text: "Will be these lines",
            fontSize:context.screenWidth < 800?18: 25,
            color: kPrimaryColor,
          ),
          const SizedBox(height: 5),
          SelectableText.rich(
            style: TextStyle(
                fontSize:
                context.screenWidth < 800 ? 12 : 20),
            scrollPhysics:
            const NeverScrollableScrollPhysics(),
            const TextSpan(
              children: [
                TextSpan(
                    text: "<link",
                    style: TextStyle(
                      color: kPrimaryColor,
                    )),
                TextSpan(
                  text: " rel",
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                TextSpan(
                  text: '="shortcut icon"',
                  style: TextStyle(
                    color: kLightGreen,
                  ),
                ),
                TextSpan(
                  text: ' href',
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                TextSpan(
                  text: '="favicon.png" ',
                  style: TextStyle(
                    color: kLightGreen,
                  ),
                ),
                TextSpan(
                  text: 'type',
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                TextSpan(
                  text: '="image/x-icon"',
                  style: TextStyle(
                    color: kLightGreen,
                  ),
                ),
                TextSpan(
                  text: '/>\n',
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
                TextSpan(
                    text: "<link",
                    style: TextStyle(
                      color: kPrimaryColor,
                    )),
                TextSpan(
                  text: " rel",
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                TextSpan(
                  text: '="icon"',
                  style: TextStyle(
                    color: kLightGreen,
                  ),
                ),
                TextSpan(
                  text: ' href',
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                TextSpan(
                  text: '="favicon.png" ',
                  style: TextStyle(
                    color: kLightGreen,
                  ),
                ),
                TextSpan(
                  text: 'type',
                  style: TextStyle(
                    color: kGrey,
                  ),
                ),
                TextSpan(
                  text: '="image/x-icon"',
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
