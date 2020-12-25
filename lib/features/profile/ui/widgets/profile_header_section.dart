import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gsg_social_media_app/utils/styles.dart';
import 'package:gsg_social_media_app/utils/appButtons.dart';
import 'package:gsg_social_media_app/repository/data_repository.dart';
import 'package:gsg_social_media_app/utils/colors.dart';



class ProfileHeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteBackground,
      height: 255.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 105.w,
                width: 105.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  image: DecorationImage(
                    image:
                    AssetImage(user.userImageURL),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 24.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.mainNameUser,
                    style: Styles.titleBlack28TextStyle,
                  ),
                  Text(
                    user.userName,
                    style: Styles.normal13TextStyle,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  NormalButton(
                    textStyle: Styles.buttonWhiteTextStyle,
                    text: 'Edit profile',
                    height: 15.h,
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('${user.followingNumber}', style: Styles.profile17TextStyle),
                  SizedBox(height: 4.h),
                  Text('Following', style: Styles.form15TextStyle),
                ],
              ),
              Column(
                children: [
                  Text('${user.followerNumber}', style: Styles.profile17TextStyle),
                  SizedBox(height: 4.h),
                  Text('Follower', style: Styles.form15TextStyle),
                ],
              ),
              Column(
                children: [
                  Text('${user.likesNumber}', style: Styles.profile17TextStyle),
                  SizedBox(height: 4.h),
                  Text('Likes', style: Styles.form15TextStyle),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
