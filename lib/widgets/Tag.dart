import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tag extends StatelessWidget {
  final String tag;
  bool active;
  final int id;
  final Function(int) makeActive;
  Tag({ required this.id, required this.tag, required this.active, required this.makeActive });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        makeActive(id)
      },
      child: Text(
            tag,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: active ? Colors.black : Color(0xFF9397A0)
            ),
          ),
    );
  }
}