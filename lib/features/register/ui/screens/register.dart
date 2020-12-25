import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gsg_social_media_app/features/register/ui/widgets/register_form.dart';
import 'package:gsg_social_media_app/widgets/rich_text_rigester.dart';

class Register extends StatelessWidget {
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/photos/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    child: Icon(Icons.arrow_back_ios),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(
                  height:205.h,
                ),
                Container(
                  width: double.infinity,
                  height: 440.h,
                  padding: EdgeInsets.only(top: 36, left: 30, right: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 20,
                        offset: Offset(0, -10), // changes position of shadow
                      ),
                    ],
                  ),
                  child: RegisterForm(),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Center(
                  child: RichTextRigester(
                    title: 'Already have an account? ',
                    titleButton: 'Login',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
