import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:test_widgets/controllers/colors.dart';
import 'package:test_widgets/controllers/font_styles.dart';

Widget verticalSpace({required double height}) {
  return SizedBox(
    height: height,
  );
}

Widget horizentalSpace({required double width}) {
  return SizedBox(
    width: width,
  );
}

Widget customElevatedButton({
  required VoidCallback onPressed,
  required String title,
  required double horizentalPadding,
  required double verticalPadding,
  Color? backGroundColor,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
            horizontal: horizentalPadding, vertical: verticalPadding)),
        backgroundColor:
            WidgetStatePropertyAll(backGroundColor ?? AppColors().primaryColor),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(39.px)))),
    child: Text(
      title,
      style: AppTextStyles().buttonText,
    ),
  );
}
