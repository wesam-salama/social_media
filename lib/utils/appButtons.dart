import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gsg_social_media_app/utils/colors.dart';

class NormalButtonWithIcon extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String text;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final Color fillColor;
  final Color splashColor;
  final Image image;
  final bool enableBorder;
  NormalButtonWithIcon(
      {@required this.onPressed,
      this.enableBorder = false,
      this.text,
      this.textStyle,
      this.image,
      this.padding = const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      this.fillColor = Colors.white,
      this.splashColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: enableBorder
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(color: AppColors.primaryColor))
          : null,
      child: RaisedButton(
        onPressed: onPressed,
        color: fillColor,
        splashColor: splashColor,
        shape: StadiumBorder(),
        child: Padding(
          padding: EdgeInsets.only(bottom: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[image, Text(text, style: textStyle)],
          ),
        ),
      ),
    );
  }
}

class NormalButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final String text;
  final TextStyle textStyle;
  final bool enableBorder;
  double height;
  double width;
  double borderRadius;
  final Color fillColor;
  final Color splashColor;
  NormalButton(
      {@required this.onPressed,
      @required this.text,
      @required this.textStyle,
      this.height,
      this.width = 85,
      this.enableBorder = false,
      this.borderRadius = 11,
      this.fillColor = AppColors.primaryColor,
      this.splashColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: enableBorder
          ? BoxDecoration(
              color: fillColor,
              borderRadius: BorderRadius.circular(borderRadius.r),
              border: Border.all(color: AppColors.primaryColor))
          : null,
      child: RawMaterialButton(
        onPressed: onPressed,
        fillColor: fillColor,
        splashColor: splashColor,
        elevation: 0,
        shape: StadiumBorder(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Text(text, style: textStyle)],
        ),
      ),
    );
  }
}
