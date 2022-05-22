import 'package:flutter/material.dart';
import 'package:bankly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneScreenLayout extends StatefulWidget {
  const PhoneScreenLayout({Key? key}) : super(key: key);

  @override
  State<PhoneScreenLayout> createState() => _PhoneScreenLayoutState();
}

class _PhoneScreenLayoutState extends State<PhoneScreenLayout> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isFirstNameValid = true;
  bool _isLastNameValid = true;
  bool _isEmailValid = true;
  bool _isPasswordValid = true;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(355, 850));
    return Scaffold(
      backgroundColor: redColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
           Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg-intro-mobile.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
