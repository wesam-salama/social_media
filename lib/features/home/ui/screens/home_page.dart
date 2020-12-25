import 'package:flutter/material.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/styles.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/colors.dart';
import 'package:gsg_social_media_app/widgets/search_bar.dart';
import 'package:gsg_social_media_app/repository/data_repository.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gsg_social_media_app/features/home/ui/widgets/post_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    double heightGet(double xdSize){
      double percent = xdSize / MediaQuery.of(context).size.height;
      double myHeight = percent * MediaQuery.of(context).size.height;
      return myHeight;
    }
    double widthGet(double xdSize){
      double percent = xdSize / MediaQuery.of(context).size.width;
      double myWidth = percent * MediaQuery.of(context).size.width;
      return myWidth;
    }
    return SafeArea(
      child: Scaffold(
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 20.h, left: 20.w,right: 20.w),
              child: SearchBar(),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding:  EdgeInsets.only( left: 20.w,right: 20.w),
              child: Text(

                'Stories',
                style: Styles.titleBlack34TextStyle,
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding:  EdgeInsets.only(  left: 20.w,right: 20.w),
              child: Container(

                height: 190.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: storys.length,
                  itemBuilder: (BuildContext context, int index) {
                    return storys[index];
                  },
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),

            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: posts.length,
                physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return posts[index];
              },
            )
          ],
        ),

      ),
    );
  }
}
