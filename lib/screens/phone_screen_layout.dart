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
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 76.h),
              child: Column( children: [
                Text(
                  'Learn to Code by\nwatching others',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 26.sp,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.h),
                Text(
                    'See how experienced developers solve\nproblems in real-time.Watching\nscripted tutorials is great, but\nunderstanding how developers think is\ninvaluable.',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: constFontSize.sp),
                    textAlign: TextAlign.center,),
                SizedBox(height: 30.h),
              ],),
            ),
          )
        ],
      ),
    );
  }
}
