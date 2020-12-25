import 'package:flutter/material.dart';
import 'package:gsg_social_media_app/features/home/models/post_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ImageItem extends StatelessWidget {
  double width;
  double height;
  Post post;
  int index;

  ImageItem({this.width, this.height, this.post, this.index});


  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(post.postImagesURL[index]),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(4.r),
      ),
    );
  }
}
