import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/colors.dart';
import 'package:gsg_social_media_app/features/home/models/story_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/styles.dart';


class StoriesItem extends StatelessWidget {
  Story story;

  StoriesItem({
    @required this.story,
  });

  @override
  Widget build(BuildContext context) {
    double heightGet(double xdSize) {
      double percent = xdSize / MediaQuery.of(context).size.height;
      double myHeight = percent * MediaQuery.of(context).size.height;
      return myHeight;
    }

    double widthGet(double xdSize) {
      double percent = xdSize / MediaQuery.of(context).size.width;
      double myWidth = percent * MediaQuery.of(context).size.width;
      return myWidth;
    }
    return Container(
      margin: EdgeInsets.only(right: 20.w),
      width: 135.w,
      height: 190.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story.storyURL),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          story.isLive
              ? Padding(
                  padding:  EdgeInsets.only(right: 10.w, top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 52.w,
                        height: 18.h,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              'assets/images/svgs/video.svg',
                              fit: BoxFit.scaleDown,
                            ),
                            Text(
                              'LIVE',
                              style: Styles.boldWhiteTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
          Padding(
            padding:  EdgeInsets.only(left: 10.w, bottom: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: 5.w),
                  child: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    radius: 15.r,
                    child: Container(
                      width: 24.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(story.userPhotoURL),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  story.userName,
                  style: Styles.boldWhiteTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



