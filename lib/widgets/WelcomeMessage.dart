import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travelapp/constants/colors.dart';

class WelcomeMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            color: shade
          ),
          height: 51.h,
          width: 51.w,
          child: Image.asset("lib/assets/images/guy.png"),
        ),
        SizedBox(
          height: 51,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontFamily: "gellix",
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                    color: Colors.black
                  ),
                ),
                Text(
                  "Monday, 3 October",
                  style: TextStyle(
                    fontFamily: "gellix",
                    fontSize: 12.sp,
                    color: secondary
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}