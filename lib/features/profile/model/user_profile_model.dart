class UserProfileModel {
  String userImageURL;
  String mainNameUser;
  String userName;
  int followingNumber;
  int followerNumber;
  int likesNumber;

  UserProfileModel({
    this.likesNumber,
    this.userName,
    this.followerNumber,
    this.followingNumber,
    this.mainNameUser,
    this.userImageURL,
  });
}
