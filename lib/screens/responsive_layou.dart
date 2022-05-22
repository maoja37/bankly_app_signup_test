import 'package:flutter/material.dart';

import 'desktop_screen_layout.dart';
import 'phone_screen_layout.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({ Key? key }) : super(key: key);

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth >= 1440){
        return const DesktopScreenLayout();
      }else{
        return const PhoneScreenLayout();
      }
    
    });
  }
}