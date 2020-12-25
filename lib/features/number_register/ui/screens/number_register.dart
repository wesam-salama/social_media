import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/styles.dart';
import 'package:gsg_social_media_app/widgets/rich_text_rigester.dart';
import 'package:gsg_social_media_app/features/number_verification/ui/screens/number_verification.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class NumberRegister extends StatelessWidget {
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
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 50.h, left: 20.w),
            child: GestureDetector(
              child: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 30.w, right: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 28.5.h,
                ),
                Text(
                  'Verify your\nphone number',
                  style: Styles.titleBlack34TextStyle,
                ),
                SizedBox(
                  height: 46.h,
                ),
                Text(
                  'We have sent you an SMS with a code to number +84 905070017',
                  style: Styles.normalBlack17TextStyle,
                ),
                SizedBox(
                  height: 46.h,
                ),
                Container(
                  width: double.infinity,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F2F6),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 15.w),
                        child: CountryCodePicker(
                          closeIcon: Icon(Icons.close, color: Colors.red),
                          showDropDownButton: true,
                          initialSelection: 'VN',
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          cursorHeight: 30.h,
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            suffixIcon: SvgPicture.asset(
                              'assets/images/svgs/close.svg',
                              fit: BoxFit.scaleDown,
                              width: 24.w,
                              height: 24.h,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Spacer(),
          Center(
            child: RichTextRigester(
              title: 'Or login with ',
              titleButton: 'Social network',
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 46.h,
          ),
          FlatButton(
            height: 48.h,
            color: Color(0xffFF2D55),
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                'Next',
                style: TextStyle(
                  fontFamily: 'SF UI Display',
                  fontSize: 17.0.sp,
                  color: Colors.white,
                  letterSpacing: 0.3199999809265137,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NumberVerification()));
            },
          ),
        ],
      ),
    );
  }
}
