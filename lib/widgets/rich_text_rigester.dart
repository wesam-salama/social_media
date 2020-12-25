import 'package:flutter/material.dart';
import 'file:///C:/Users/Abo%20Adam/Desktop/social_media/social_media/gsg_social_media_app/lib/utils/styles.dart';

class RichTextRigester extends StatelessWidget {
  String title;
  String titleButton;
  Function onPressed;

  RichTextRigester({
    @required this.title,
    @required this.titleButton,
    @required this.onPressed,
  }) : assert(titleButton != null && onPressed != null && title != null);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: Styles.normalGrayTextStyle,
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: GestureDetector(
              child: Text(
                titleButton,
                style: Styles.normalPinkTextStyle,
              ),
              onTap: onPressed,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
