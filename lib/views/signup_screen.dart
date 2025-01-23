import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: [
            Image.asset("assets/signup_image.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: Column(
                children: [
                  const SizedBox(
                    height: 19.07,
                  ),
                  const Text(
                    "Get started",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff444444),
                        fontWeight: FontWeight.w500,
                        fontFamily: "regularPoppins"),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  const Text(
                    "Please enter the required details",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff717171),
                        fontWeight: FontWeight.w400,
                        fontFamily: "regularPoppins"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xff717171),
                            fontWeight: FontWeight.w400,
                            fontFamily: "regularPoppins"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none
                      ),
                      filled: true,
                      fillColor: const Color(0xffF8F8F8),
                      isCollapsed: true,
                      contentPadding:const EdgeInsets.symmetric(horizontal: 22,vertical: 13),
                      prefixIcon:Transform.scale(scale: 0.5,
                          child: SvgPicture.asset("assets/profile.svg",height: 10.18,width: 10.18,)),
                      hintText: "Lita han",
                      hintStyle:  const TextStyle(
                          fontSize: 10,
                          color: Color(0xff717171),
                          fontWeight: FontWeight.w400,
                          fontFamily: "regularPoppins")
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
