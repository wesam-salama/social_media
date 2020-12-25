import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButtons extends StatelessWidget {
  String imagePath;
  String title;
  Color titleColor;
  Color buttonColor;
  Function onPressed;
  LoginButtons({
    @required this.buttonColor,
    @required this.imagePath,
    @required this.onPressed,
    @required this.title,
    @required this.titleColor,
  }) : assert(
          buttonColor != null &&
              imagePath != null &&
              onPressed != null &&
              title != null &&
              titleColor != null,
        );

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
    
    return Container(
      height: 44.h,
      width: 315.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0.r),
        color: buttonColor,
      ),
      child: FlatButton(
        child: Row(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 10.w, right: 24.w),
              child: SvgPicture.asset(imagePath),
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 17.sp,
                color: titleColor,
                letterSpacing: 0.3199999809265137,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
