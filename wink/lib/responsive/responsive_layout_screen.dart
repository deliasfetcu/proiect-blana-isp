import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wink/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webscreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({Key? key, required this.webscreenLayout, required this.mobileScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth >webScreenSize){
          return webscreenLayout;
          //web screen
        }
        return mobileScreenLayout;
        //mobile screen layout
      }
    );
  }
}