import 'package:flutter/material.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/styles.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 36.h,
          width: 280.w,
          decoration: BoxDecoration(
            color: AppColors.primaryGrayColor,
            borderRadius: BorderRadius.circular(18.r),
          ),
          // alignment: Alignment.c,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: Styles.normalGrayTextStyle,
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          height: 36.h,
          width: 36.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: [
                  const Color(0xFFFF906A),
                  const Color(0xFFFF3F64),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.add,
            color: AppColors.primaryWhiteColor,
            size: 35.h,

          ),
        ),
      ],
    );
  }
}
