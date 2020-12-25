import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gsg_social_media_app/features/login/ui/screens/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gsg_social_media_app/features/number_register/ui/screens/number_register.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/styles.dart';
import 'package:gsg_social_media_app/features/welcome/ui/widgets/loginButtons.dart';
import 'package:gsg_social_media_app/widgets/rich_text_rigester.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  // double  _height = MediaQuery.of(context).size.height;
  // double  _width = MediaQuery.of(context).size.width;

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

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/photos/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
              width: double.infinity,
            ),
            Container(

              height: 107.17.w,
              width: 107.17.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: Colors.white,
              ),
              child: SvgPicture.asset('assets/images/svgs/logo.svg'),
            ),
            SizedBox(
              height: 209.8.h,
            ),
            Text(
              "Share your greatest\nmoments",
              textAlign: TextAlign.center,
              style: Styles.titleWhite34TextStyle,
            ),
            SizedBox(
              height: 104.h,
            ),
            LoginButtons(
              buttonColor: Color(0xff0c66ff),
              imagePath: 'assets/images/svgs/facebook.svg',
              title: 'Connect with Facebook',
              titleColor: Color(0xffffffff),
              onPressed: () {},
            ),
            SizedBox(
              height: 15.h,
            ),
            LoginButtons(
              buttonColor: Colors.white,
              imagePath: 'assets/images/svgs/phone.svg',
              title: 'Connect with Phone number',
              titleColor: Color(0xffff2d55),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NumberRegister()));
              },
            ),
            SizedBox(
              height: 40.h,
            ),
            RichTextRigester(
              title: 'Already have an account? ',
              titleButton: 'Login',
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
