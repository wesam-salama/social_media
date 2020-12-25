import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gsg_social_media_app/features/core_page/core_page.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/colors.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/styles.dart';
import 'package:gsg_social_media_app/widgets/rich_text_rigester.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class NumberVerification extends StatelessWidget {
  String pinConde = '';
  

  resendCode() {
    print('resend');
  }

  savePin(String value) {
    this.pinConde = value;
  }
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
      // resizeToAvoidBottomPadding: false,
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
                  'Phone Verification',
                  style: Styles.titleBlack34TextStyle,
                ),
                SizedBox(
                  height: 21.h,
                ),
                Text(
                  'Enter your OTP code here',
                  style: Styles.normalBlack17TextStyle,
                ),
                SizedBox(
                  height: 50.h,
                ),
                // PinCodeTextField(
                //   length: 4,
                //   obscureText: false,
                //   appContext: context,
                //   animationType: AnimationType.fade,
                //   pinTheme: PinTheme(
                //     shape: PinCodeFieldShape.box,
                //     borderRadius: BorderRadius.circular(5),
                //     fieldHeight: 60,
                //     fieldWidth: 60,
                //     activeFillColor: Colors.white,
                //     disabledColor: Colors.white,
                //   ),
                //   animationDuration: Duration(milliseconds: 300),
                //   backgroundColor: Colors.transparent,
                //   enableActiveFill: true,
                //   // errorAnimationController: errorController,
                //   // controller: textEditingController,
                //   onCompleted: (v) {
                //     print("Completed");
                //   },
                //   onChanged: (value) {
                //     print(value);
                //     // setState(() {
                //     //   currentText = value;
                //     // }
                //     // );
                //   },
                //   beforeTextPaste: (text) {
                //     print("Allowing to paste $text");
                //     //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //     //but you can show anything you want here, like your pop up saying wrong paste format or etc
                //     return true;
                //   },
                // ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: PinCodeTextField(
                    length: 4,
                    animationType: AnimationType.fade,
                    enableActiveFill: true,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    pinTheme: PinTheme(

                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5.r),
                        fieldHeight: 60.w,
                        fieldWidth: 60.w,
                        activeColor: AppColors.primaryColor,
                        activeFillColor: AppColors.primaryColor,
                        inactiveColor: Color(0xFFF1F2F6),
                        inactiveFillColor: Color(0xFFF1F2F6),
                        selectedColor: AppColors.primaryColor,
                        selectedFillColor: AppColors.primaryColor),
                    animationDuration: Duration(milliseconds: 300),
                    pastedTextStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    backgroundColor: Colors.transparent,
                    keyboardType: TextInputType.number,
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32.sp,
                    ),
                    onCompleted: (v) {
                      savePin(v);
                    },
                    onChanged: (value) {},
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      return true;
                    },

                    appContext: context,
                  ),
                ),


              ],
            ),
          ),
          Spacer(),
          Center(
            child: RichTextRigester(
              title: 'Didn\'t you received any code?\n',
              titleButton: 'Resend a new code.',
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          FlatButton(
            height: 45.h,
            color: Color(0xffFF2D55),
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                'Verify',
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
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CorePage()));
            },
          ),
        ],
      ),
    );
  }
}
