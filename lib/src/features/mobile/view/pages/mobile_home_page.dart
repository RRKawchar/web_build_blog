import 'package:blog_website/src/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("How to build flutter web",style: TextStyle(
                  fontSize: 40,fontWeight: FontWeight.bold,color: kGreen
                ),),
              ],
            )
          ],
        ),
      )
    );
  }
}
