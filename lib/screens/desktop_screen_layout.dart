import 'package:bankly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopScreenLayout extends StatefulWidget {
  const DesktopScreenLayout({Key? key}) : super(key: key);

  @override
  State<DesktopScreenLayout> createState() => _DesktopScreenLayoutState();
}

class _DesktopScreenLayoutState extends State<DesktopScreenLayout> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isFirstNameValid = true;
  bool _isLastNameValid = true;
  bool _isEmailValid = true;
  bool _isPasswordValid = true;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(1440, 850));
    return Scaffold(
      backgroundColor: redColor,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg-intro-desktop.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 150.h, vertical: 76.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Learn to Code by\nwatching others',
                  style: GoogleFonts.poppins(
                    height: 1.2.h,
                    fontWeight: FontWeight.w700,
                    fontSize: 48.sp,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32.h),
                Text(
                    'See how experienced developers solve problems in real-time.\nWatching scripted tutorials is great, but understanding how\ndevelopers think is invaluable.',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontSize: 18.sp),
                    textAlign: TextAlign.left),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                      offset: const Offset(0, 10),
                    )
                  ]),
                  child: MaterialButton(
                    padding: EdgeInsets.symmetric(vertical: 26.h),
                    onPressed: () {},
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r)),
                    color: blueColor,
                    minWidth: 570.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: 'Try it free 7 days ',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp,
                                    color: Colors.white),
                                children: [
                              TextSpan(
                                text: 'then \$20/mon. thereafter',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Colors.white),
                              )
                            ])),
                        SizedBox(height: 4.h),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
                Container(
                  width: 570.w,
                  padding: EdgeInsets.symmetric(vertical: 26.h, horizontal: 32.h),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),
                    color: Colors.white,), child: 
                    Form(
                    key: _formKey,
                    child: Column(children: [
                      TextFormField(
                        style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              
                            ),
                        decoration: InputDecoration(
                            hintText: 'First Name',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: greyishBlueColor,
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey,
                              width: 5,
                            )),
                            suffixIcon: _isFirstNameValid
                                ? null
                                : Icon(
                                    Icons.error,
                                    color: redColor,
                                    size: 30.sp,
                                  )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            setState(() {
                              _isFirstNameValid = false;
                            });
                            return 'First Name cannot be empty';
                          } else {
                            setState(() {
                              _isFirstNameValid = true;
                            });
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              
                            ),
                        decoration: InputDecoration(
                            hintText: 'Last Name',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: greyishBlueColor,
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey,
                              width: 5,
                            )),
                            suffixIcon: _isLastNameValid
                                ? null
                                : Icon(
                                    Icons.error,
                                    color: redColor,
                                    size: 30.sp,
                                  )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            setState(() {
                              _isLastNameValid = false;
                            });
                            return 'Last Name cannot be empty';
                          } else {
                            setState(() {
                              _isLastNameValid = true;
                            });
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              
                            ),
                        decoration: InputDecoration(
                            hintText: 'Email Address',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: greyishBlueColor,
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey,
                              width: 5,
                            )),
                            suffixIcon: _isEmailValid
                                ? null
                                : Icon(
                                    Icons.error,
                                    color: redColor,
                                    size: 30.sp,
                                  )),
                        validator: (value) {
                          if (!RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                              .hasMatch(value!)) {
                            setState(() {
                              _isEmailValid = false;
                            });

                            return 'Looks like this is not an email';
                          } else {
                            setState(() {
                              _isEmailValid = true;
                            });
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              
                            ),
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: greyishBlueColor,
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.grey,
                              width: 5,
                            )),
                            suffixIcon: _isPasswordValid
                                ? null
                                : Icon(
                                    Icons.error,
                                    color: redColor,
                                    size: 30.sp,
                                  )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            setState(() {
                              _isPasswordValid = false;
                            });

                            return 'Password cannot be empty';
                          } else {
                            setState(() {
                              _isPasswordValid = true;
                            });
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      MaterialButton(
                        color: greenColor,
                        padding: EdgeInsets.symmetric(vertical: 22.h),
                        onPressed: () {
                          _formKey.currentState!.validate();
                        },
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r)),
                        minWidth: double.infinity,
                        child: Text(
                          'CLAIM YOUR FREE TRIAL',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text:
                                'By clicking the button you are agreeing to our ',
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp, color: Colors.grey),
                            children: [
                              TextSpan(
                                  text: 'Terms and Services',
                                  style: GoogleFonts.poppins(
                                      color: redColor,
                                      fontWeight: FontWeight.w600))
                            ],
                          ))
                    ]),
                  ),
                )
              ],
            )
          ]),
        )
      ]),
    );
  }
}
