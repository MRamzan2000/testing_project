import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_widgets/views/custom_widgets.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 1.h),
                  height: 70.h,
                  width: double.infinity,
                  color: index == 0
                      ? Colors.green
                      : index == 1
                      ? Colors.red
                      : index == 2
                      ? Colors.blueAccent
                      : Colors.black,
                );
              },
            ),
          ),
          verticalSpace(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.px),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customElevatedButton(
                    onPressed: () {

                      if (selectedIndex < 4) {
                        controller.animateToPage(
                          selectedIndex + 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                        setState(() {
                        });
                      }else{
                        controller.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );                      }
                    },
                    title: "Next",
                    horizentalPadding: 6.h,
                    verticalPadding: 0),
                SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  axisDirection: Axis.horizontal,
                  onDotClicked: (index) {
                    selectedIndex = index;
                    log("index:$index");
                  },
                  effect: ExpandingDotsEffect(
                    dotHeight: 1.h,
                    dotWidth: 1.h,
                    expansionFactor: 4,
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(height: 6.h)
        ],
      ),
    );
  }
}
