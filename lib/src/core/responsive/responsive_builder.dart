import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget web;
  const ResponsiveBuilder({super.key, required this.mobile, required this.web,});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder:(context,boxConstrains){
          if(boxConstrains.maxWidth<600){
            return mobile;
          }else{
            return web;
          }
        }
    );
  }
}
