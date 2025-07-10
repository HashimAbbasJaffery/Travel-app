import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            spacing: 10,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: SizedBox(
                  width: 70.w,
                  height: 70.h,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(22)),
                    child: Image.asset("lib/assets/images/video-thumbnail.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 70.h,
                child: Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      style: TextStyle(
                        color: Color(0xFF19202D),
                        fontFamily: "gellix",
                        fontWeight: FontWeight.w600
                      ),
                      "Top Trending \nIslands in 2022"
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        Image.asset("lib/assets/images/eye.png"),
                        Text(
                          "40,999",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF9397A0)
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          );
  }
}