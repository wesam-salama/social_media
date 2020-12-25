import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gsg_social_media_app/features/home/ui/screens/home_page.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gsg_social_media_app/features/profile/ui/screens/my_profile.dart';


class CorePage extends StatefulWidget {
  @override
  _CorePageState createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  List<Widget> screens = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    MyProfile(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        selectedItemColor: AppColors.primaryColor,

        currentIndex: currentIndex,
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },

        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.only(bottom: 5.h),
              child: SvgPicture.asset(
                'assets/images/svgs/home.svg',
                height: currentIndex == 0 ? 25.h : null,
                width: currentIndex == 0 ? 25.w : null,
                color: currentIndex == 0 ? AppColors.primaryColor : null,
              ),
            ),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.only(bottom: 5.h),
              child: SvgPicture.asset(
                'assets/images/svgs/stream.svg',
                height: currentIndex == 1 ? 25.h : null,
                width: currentIndex == 1 ? 25.w : null,
                color: currentIndex == 1 ? AppColors.primaryColor : null,
              ),
            ),
            label: 'Streams',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.only(bottom: 5.h),
              child: SvgPicture.asset(
                'assets/images/svgs/message.svg',
                height: currentIndex == 2 ? 25.h : null,
                width: currentIndex == 2 ? 25.w : null,
                color: currentIndex == 2 ? AppColors.primaryColor : null,
              ),
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.only(bottom: 5.h),
              child: SvgPicture.asset(
                'assets/images/svgs/notification.svg',
                height: currentIndex == 3 ? 25.h : null,
                width: currentIndex == 3 ? 25.w : null,
                color: currentIndex == 3 ? AppColors.primaryColor : null,
                // fit: BoxFit.scaleDown,
              ),
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:  EdgeInsets.only(bottom: 5.h),
              child: SvgPicture.asset(
                'assets/images/svgs/profile.svg',
                height: currentIndex == 4 ? 25.h : null,
                width: currentIndex == 4 ? 25.w : null,
                color: currentIndex == 4 ? AppColors.primaryColor : null,
              ),
            ),
            label: 'Profiles',
          ),
        ],
      ),
    );
  }
}
