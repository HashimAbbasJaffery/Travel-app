import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travelapp/constants/colors.dart';
import 'package:travelapp/widgets/CustomCard.dart';
import 'package:travelapp/widgets/SearchInput.dart';
import 'package:travelapp/widgets/Tag.dart';
import 'package:travelapp/widgets/Tags.dart';
import 'package:travelapp/widgets/Video.dart';
import 'package:travelapp/widgets/WelcomeMessage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: [
            WelcomeMessage(),
            SearchInput(),
            Tags(),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Customcard(),
                          Customcard(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [ 
                Text(
                  "Short For You",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                    fontFamily: "gellix",
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 12,
                    color: primary,
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 20.w,
                children: [
                  Video(),
                  Video()
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}