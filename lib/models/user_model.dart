class UserModel {
  static const tableName = "users";

  String? uid;
  String? name;
  String? email;
  String? image;

  UserModel({
    this.uid,
    this.name,
    this.email,
    this.image,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map["uid"] ?? "",
      name: map["name"] ?? "",
      email: map["email"] ?? "",
      image: map["image"] ?? "",
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "name": name,
      "email": email,
      "image": image,
    };
  }
}
