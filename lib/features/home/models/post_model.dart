class Post {
  String userPhotoURL;
  String userName;
  String postDate;
  bool isFollowing;
  String hashTags;
  String content;
  List<String> postImagesURL;
  int likesNumber;
  int commentsNumber;
  List<String> friendsSeenImagesURL;

  Post({
    this.userPhotoURL,
    this.userName,
    this.postDate,
    this.isFollowing,
    this.hashTags,
    this.content,
    this.postImagesURL,
    this.likesNumber,
    this.commentsNumber,
    this.friendsSeenImagesURL,
  });
}
