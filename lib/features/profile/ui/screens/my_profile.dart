import 'package:flutter/material.dart';
import 'package:gsg_social_media_app/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gsg_social_media_app/utils/styles.dart';
import 'package:gsg_social_media_app/utils/appButtons.dart';
import 'package:gsg_social_media_app/repository/data_repository.dart';
import 'package:gsg_social_media_app/features/profile/ui/widgets/profile_header_section.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gsg_social_media_app/features/profile/ui/widgets/profile_list_item.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.grayBackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileHeaderSection(),
            Container(
              height: 152.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Card(
                elevation: 5,
                // margin: EdgeInsets.only(top: 10.h,left: 10,right: 18.6,bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProfileListItem(iconPath: 'assets/images/svgs/myLiveStreemProfile.svg',title: 'My live stream',),
                    ProfileListItem(iconPath: 'assets/images/svgs/messagesProfile.svg',title: 'Messages',),
                    ProfileListItem(iconPath: 'assets/images/svgs/groupsProfile.svg',title: 'Groups',),
                    SizedBox(height: 5.h),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              height: 255.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Card(
                elevation: 5,
                // margin: EdgeInsets.only(top: 10.h,left: 10,right: 18.6,bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ProfileListItem(iconPath: 'assets/images/svgs/myWalletProfile.svg',title: 'My wallet',),
                    ProfileListItem(iconPath: 'assets/images/svgs/mylevelProfile.svg',title: 'My level',),
                    ProfileListItem(iconPath: 'assets/images/svgs/findFriendsProfile.svg',title: 'Find friends',),
                    ProfileListItem(iconPath: 'assets/images/svgs/blacklistProfile.svg',title: 'Blacklist',),
                    ProfileListItem(iconPath: 'assets/images/svgs/settingsProfile.svg',title: 'Settings',),
                    SizedBox(height: 5.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
