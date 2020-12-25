import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gsg_social_media_app/utils/styles.dart';


class ProfileListItem extends StatelessWidget {
  String iconPath;
  String title;
  ProfileListItem({this.iconPath,this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h,left: 10.w,right: 18.6.w),
      child: Row(
        children: [
          Container(
            height: 30.h,
            width: 30.h,
            child: SvgPicture.asset(
                iconPath),
          ),
          SizedBox(
            width: 11.w,
          ),
          Text(
            title,
            style: Styles.profile15TextStyle,
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 18.h,
            color: Color(0xFFC2C4CA),
          )
        ],
      ),
    );
  }
}
