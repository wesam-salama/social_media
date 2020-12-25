import 'package:flutter/material.dart';
import 'package:gsg_social_media_app/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gsg_social_media_app/features/home/models/post_model.dart';
import 'package:gsg_social_media_app/features/home/ui/widgets/image_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gsg_social_media_app/utils/styles.dart';
import 'package:gsg_social_media_app/utils/appButtons.dart';

class PostItem extends StatefulWidget {
  Post post;
  PostItem({
    @required this.post,
  });

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    double heightGet(double xdSize) {
      double percent = xdSize / MediaQuery.of(context).size.height;
      double myHeight = percent * MediaQuery.of(context).size.height;
      return myHeight;
    }

    double widthGet(double xdSize) {
      double percent = xdSize / MediaQuery.of(context).size.width;
      double myWidth = percent * MediaQuery.of(context).size.width;
      return myWidth;
    }

    return Container(
      color: Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Container(
          // height: 404,
          padding: EdgeInsets.all(5.w),
          width: 345.w,
          color: Color(0xFFF7F8FA),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 50.w,
                    width: 50.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(widget.post.userPhotoURL),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.post.userName,
                        style: Styles.boldBlackTextStyle,
                      ),
                      Text(
                        widget.post.postDate,
                        style: Styles.form14TextStyle,
                      ),
                    ],
                  ),
                  Spacer(),
                  widget.post.isFollowing
                      ? NormalButton(
                          textStyle: Styles.buttonWhiteTextStyle,
                          text: 'FOLLOWING',
                          splashColor: Colors.black.withOpacity(0.5),
                          height: 24,
                          onPressed: () {
                            widget.post.isFollowing = !widget.post.isFollowing;
                            setState(() {});
                          },
                        )
                      : NormalButton(
                          textStyle: Styles.buttonPrimaryTextStyle,
                          text: 'Follow',
                          splashColor: Colors.black.withOpacity(0.5),
                          height: 24,
                          onPressed: () {
                            widget.post.isFollowing = !widget.post.isFollowing;
                            setState(() {});
                          },
                          fillColor: AppColors.whiteBackground,
                          enableBorder: true,
                        ),
                ],
              ),
              SizedBox(
                height: 17.h,
              ),
              Text(
                widget.post.hashTags,
                style: Styles.normalPinkTextStyle,
              ),
              SizedBox(
                height: heightGet(6),
              ),
              Text(
                widget.post.content,
                style: Styles.postBlackTextStyle,
              ),
              SizedBox(
                height: 20.h,
              ),
              widget.post.postImagesURL.length == 0
                  ? noImagePost()
                  : widget.post.postImagesURL.length == 1
                      ? oneImagePost(heightGet: heightGet, widthGet: widthGet)
                      : widget.post.postImagesURL.length == 2
                          ? twoImagesPost(
                              heightGet: heightGet, widthGet: widthGet)
                          : widget.post.postImagesURL.length == 3
                              ? threeImagesPost(
                                  heightGet: heightGet, widthGet: widthGet)
                              : widget.post.postImagesURL.length == 4
                                  ? fourImagesPost(
                                      heightGet: heightGet, widthGet: widthGet)
                                  : widget.post.postImagesURL.length == 5
                                      ? fiveImagesPost(
                                          heightGet: heightGet,
                                          widthGet: widthGet)
                                      : moreThanFiveImagePost(
                                          heightGet: heightGet,
                                          widthGet: widthGet),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/svgs/like.svg',
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(
                    width: 4.5.w,
                  ),
                  Text(
                    '${widget.post.likesNumber}',
                    style: Styles.normalBlack15TextStyle,
                  ),
                  SizedBox(
                    width: 26.w,
                  ),
                  SvgPicture.asset(
                    'assets/images/svgs/comment.svg',
                    fit: BoxFit.scaleDown,
                  ),
                  SizedBox(
                    width: 4.5.w,
                  ),
                  Text(
                    '${widget.post.commentsNumber}',
                    style: Styles.normalBlack15TextStyle,
                  ),
                  Spacer(),
                  Container(
                      width: 90.w,
                      height: 30.w,
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 28.w,
                              height: 28.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      widget.post.friendsSeenImagesURL[0]),
                                  fit: BoxFit.cover,
                                ),
                                border:
                                    Border.all(color: Colors.white, width: 2.w),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 19,
                            child: Container(
                              width: 28.w,
                              height: 28.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      widget.post.friendsSeenImagesURL[1]),
                                  fit: BoxFit.cover,
                                ),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 38,
                            child: Container(
                              width: 28.w,
                              height: 28.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      widget.post.friendsSeenImagesURL[2]),
                                  fit: BoxFit.cover,
                                ),
                                border:
                                    Border.all(color: Colors.white, width: 2.w),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget noImagePost() {
    return Container();
  }

  Widget oneImagePost({Function heightGet, Function widthGet}) {
    return Center(
      child: ImageItem(
        width: 300.00.w,
        height: 300.00.h,
        index: 0,
        post: widget.post,
      ),
    );
  }

  Widget twoImagesPost({Function heightGet, Function widthGet}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageItem(
          width: 135.00.w,
          height: 152.00.h,
          index: 0,
          post: widget.post,
        ),
        SizedBox(
          width: 11.5.w,
        ),
        ImageItem(
          width: 135.00.w,
          height: 152.00.h,
          index: 1,
          post: widget.post,
        ),
      ],
    );
  }

  Widget threeImagesPost({Function heightGet, Function widthGet}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageItem(
          width: 90.00.w,
          height: 100.00.h,
          index: 0,
          post: widget.post,
        ),
        SizedBox(
          width: 11.5.w,
        ),
        ImageItem(
          width: 90.00.w,
          height: 100.00.h,
          index: 1,
          post: widget.post,
        ),
        SizedBox(
          width: 11.5.w,
        ),
        ImageItem(
          width: 90.00.w,
          height: 100.00.h,
          index: 2,
          post: widget.post,
        ),
      ],
    );
  }

  Widget fourImagesPost({Function heightGet, Function widthGet}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            ImageItem(
              width: 140.00.w,
              height: 140.00.h,
              index: 0,
              post: widget.post,
            ),
            SizedBox(
              height: 12.0.h,
            ),
            ImageItem(
              width: 140.00.w,
              height: 140.00.h,
              index: 2,
              post: widget.post,
            ),
          ],
        ),
        SizedBox(
          width: 11.5.w,
        ),
        Column(
          children: [
            ImageItem(
              width: 140.00.w,
              height: 140.00.h,
              index: 1,
              post: widget.post,
            ),
            SizedBox(
              height: 12.0.h,
            ),
            ImageItem(
              width: 140.00.w,
              height: 140.00.h,
              index: 3,
              post: widget.post,
            ),
          ],
        ),
      ],
    );
  }

  Widget fiveImagesPost({Function heightGet, Function widthGet}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageItem(
          width: 140.00.w,
          height: 152.08.h,
          index: 0,
          post: widget.post,
        ),
        SizedBox(
          width: 11.5.w,
        ),
        Column(
          children: [
            ImageItem(
              width: 70.00.w,
              height: 70.08.h,
              index: 1,
              post: widget.post,
            ),
            SizedBox(
              height: 12.0.h,
            ),
            ImageItem(
              width: 70.00.w,
              height: 70.08.h,
              index: 2,
              post: widget.post,
            ),
          ],
        ),
        SizedBox(
          width: 11.5.w,
        ),
        Column(
          children: [
            ImageItem(
              width: 70.00.w,
              height: 70.08.h,
              index: 3,
              post: widget.post,
            ),
            SizedBox(
              height: 12.0.h,
            ),
            ImageItem(
              width: 70.00.w,
              height: 70.08.h,
              index: 4,
              post: widget.post,
            ),
          ],
        ),
      ],
    );
  }

  Widget moreThanFiveImagePost({Function heightGet, Function widthGet}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageItem(
          width: 140.00.w,
          height: 152.08.h,
          index: 0,
          post: widget.post,
        ),
        SizedBox(
          width: 11.5.w,
        ),
        Column(
          children: [
            ImageItem(
              width: 70.00.w,
              height: 70.08.h,
              index: 1,
              post: widget.post,
            ),
            SizedBox(
              height: 12.0.h,
            ),
            ImageItem(
              width: 70.00.w,
              height: 70.08.h,
              index: 2,
              post: widget.post,
            ),
          ],
        ),
        SizedBox(
          width: 11.5.w,
        ),
        Column(
          children: [
            ImageItem(
              width: 70.00.w,
              height: 70.08.h,
              index: 3,
              post: widget.post,
            ),
            SizedBox(
              height: 12.0.h,
            ),
            Container(
              width: 70.0.w,
              height: 70.0.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.post.postImagesURL[4]),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                ),
                borderRadius: BorderRadius.circular(4.r),
              ),
              alignment: Alignment.center,
              child: Text(
                '+${widget.post.postImagesURL.length - 5}',
                style: TextStyle(
                  fontFamily: 'SF UI Display',
                  fontSize: 17.0.sp,
                  color: Colors.white,
                  letterSpacing: 0.3199999809265137,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
