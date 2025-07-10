import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "lib/assets/images/beach.png"
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Text(
              "Feel the thrill on the only \nsurf simulator in Maldives 2022",
              style: TextStyle(
                fontSize: 15,
                fontFamily: "gellix",
                fontWeight: FontWeight.w600,
                color: Color(0xFF19202D)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: SizedBox(
              width: 231.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Row(
                      children: [
                        SizedBox(
                      height: 38.h,
                      width: 38.w,
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.all(Radius.circular(50)),
                        child: Image.network("https://media.licdn.com/dms/image/v2/D4D03AQE6fxY6tUdKzA/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1710178806567?e=1757548800&v=beta&t=6g62p2J7BIHf_uvcCfN2h7tj7q47RiSTkpAb-I4wKGU"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hashim Abbas",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "gellix",
                              color: Color(0xFF19202D),
                              fontWeight: FontWeight.w600
                            ),
                          ),
                          Text(
                            "Sep 9, 2022",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF9397A0)
                            ),
                          )
                        ],
                      ),
                    ),
                    ],
                  ),
                  SizedBox(
                    height: 37.h,
                    width: 37.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Color(0xFFEFF5F4),
                        padding: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        )
                      ),
                      onPressed: () => {}, 
                      child: Image.asset(
                        "lib/assets/images/plane.png",
                      )
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}