import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:template_getx/app/views/widgets/text_button_widget.dart';
import 'package:template_getx/app/views/widgets/text_input_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 60.h),
              SvgPicture.asset(
                'assets/logos/aurora.svg',
                width: 200.w,
                colorFilter: const ColorFilter.mode(
                  Color(0xFF39B54A),
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(height: 60.h),

              /// Email
              Text(
                'enterEmail'.tr,
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 6.h),
              InputField(
                hintText: 'email'.tr,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.h),

              /// Password
              Text(
                'enterPassword'.tr,
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 6.h),
              InputField(hintText: 'password'.tr, obscureText: true),
              SizedBox(height: 24.h),

              /// Login button
              TextWidgetButton(
                text: 'login'.tr,
                onPressed: () {
                  // Handle login action
                },
              ),
              SizedBox(height: 24.h),

              /// Forgot Password
              TextButton(
                onPressed: () {
                  // Handle forgot password
                },
                child: Text(
                  'forgotPassword'.tr,
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
              SizedBox(height: 16.h),

              /// Signup navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('noAccount'.tr, style: TextStyle(fontSize: 14.sp)),
                  TextButton(
                    onPressed: () {
                      // Navigate to signup
                    },
                    child: Text(
                      'signUp'.tr,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
