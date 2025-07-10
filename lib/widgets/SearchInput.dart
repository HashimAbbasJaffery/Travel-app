import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travelapp/constants/colors.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              children: [
                  Expanded(
                    child: SizedBox(
                      height: 40.h,
                      child: TextField(
                        style: TextStyle(
                          fontFamily: "gellix",
                          fontSize: 15.sp
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for article...",
                          hintStyle: TextStyle(
                            color: secondaryShade,
                            fontSize: 15.sp,
                            fontFamily: "gellix"
                          ),
                        ),
                      ),
                    ),
                  ),
            
                  SizedBox(
                    height: 49.h,
                    width: 47.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        )
                      ),
                      onPressed: () => {}, 
                      child: Image.asset(
                        "lib/assets/images/magnifying-glass.png",
                      )
                    ),
                  )
              ],
            ),
          );
  }
}