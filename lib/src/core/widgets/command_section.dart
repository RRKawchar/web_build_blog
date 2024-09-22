import 'package:blog_website/src/core/extensions/build_context_extension.dart';
import 'package:blog_website/src/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CommandSection extends StatelessWidget {
  const CommandSection({super.key});

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
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText.rich(
            cursorColor: Colors.white,
            style: TextStyle(fontSize:  context.screenWidth < 800?16:20,),
            const TextSpan(
              children: [
                TextSpan(
                    text: "\$ ",
                    style: TextStyle(
                      color: kPrimaryColor,
                    )),
                TextSpan(
                  text: " flutter clean",
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
          SelectableText.rich(
            cursorColor: Colors.white,
            style: TextStyle(fontSize:  context.screenWidth < 800?16:20,),
            const TextSpan(
              children: [
                TextSpan(
                    text: "\$ ",
                    style: TextStyle(
                      color: kPrimaryColor,
                    )),
                TextSpan(
                  text: " flutter pub get",
                  style: TextStyle(
                    color: kNavyBlue,
                  ),
                ),
              ],
            ),
          ),
          SelectableText.rich(
            cursorColor: Colors.white,
            style: TextStyle(fontSize:  context.screenWidth < 800?16:20,),
            const TextSpan(
              children: [
                TextSpan(
                    text: "\$ ",
                    style: TextStyle(
                      color: kPrimaryColor,
                    )),
                TextSpan(
                  text: " flutter build web",
                  style: TextStyle(
                    color: kDeepBlue,
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
