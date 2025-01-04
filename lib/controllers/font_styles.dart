import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_widgets/controllers/colors.dart';
class AppTextStyles{
  TextStyle boldText = TextStyle(
    fontSize: 40.px,
    color: AppColors().primaryColor,
    fontWeight: FontWeight.w400,
    fontFamily: "boldStyle",
  );
  TextStyle buttonText = TextStyle(
    fontSize: 17.px,
    color: AppColors().whiteColor,
    fontWeight: FontWeight.w400,
    fontFamily: "lightPoppins",
  );
}