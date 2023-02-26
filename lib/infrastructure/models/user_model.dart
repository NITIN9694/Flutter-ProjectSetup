class UserModel {
  int? createdAt;
  String? profileImage;
  String? fullName;
  String? gender;
  String? phone;
  String? dob;
  String? deviceToken;
  String? deviceType;
  bool? isActive;
  String? userId;

  UserModel(
      {this.createdAt,
        this.profileImage,
        this.fullName,
        this.gender,
        this.phone,
        this.dob,
        this.deviceToken,
        this.deviceType,
        this.isActive,
        this.userId});

  UserModel.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    profileImage = json['profile_image'];
    fullName = json['full_name'];
    gender = json['gender'];
    phone = json['phone'];
    dob = json['dob'];
    deviceToken = json['device_token'];
    deviceType = json['device_type'];
    isActive = json['isActive'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['profile_image'] = this.profileImage;
    data['full_name'] = this.fullName;
    data['gender'] = this.gender;
    data['phone'] = this.phone;
    data['dob'] = this.dob;
    data['device_token'] = this.deviceToken;
    data['device_type'] = this.deviceType;
    data['isActive'] = this.isActive;
    data['userId'] = this.userId;
    return data;
  }
}
