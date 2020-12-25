import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/styles.dart';

class LoginForm extends StatelessWidget {
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
    return Form(
      child: Column(
        children: [
          Container(width: double.infinity),
          Text(
            'Welcome back',
            textAlign: TextAlign.center,
            style: Styles.titleBlack34TextStyle,
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            'Login to your account',
            textAlign: TextAlign.center,
            style: Styles.normalGrayTextStyle,
          ),
          SizedBox(
            height: 52.h,
          ),
          Container(
            padding: EdgeInsets.only(left: 17.w),
            margin: EdgeInsets.only(bottom: 10.h),
            width: 275.w,
            height: 44.h,
            decoration: BoxDecoration(
              color: Color(0XffF1F2F6),
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: Styles.form14TextStyle,
                border: InputBorder.none,
                // fillColor: Colors.red,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 17.w),
            width: 275.w,
            height: 44.h,
            decoration: BoxDecoration(
              color: Color(0XffF1F2F6),
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',

                hintStyle: Styles.form14TextStyle,
                border: InputBorder.none,
                // fillColor: Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            height: 44.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0.r),
              color: Color(0xffFF2D55),
            ),
            child: FlatButton(
              child: Text(
                'Login',
                style: Styles. boldWhiteTextStyle,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 36.h,
          ),
          Container(
            height: 44.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0.r),
            ),
            child: FlatButton(
              child: Text(
                'Forgot your password?',
                style: Styles.boldBlackTextStyle,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
