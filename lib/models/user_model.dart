class UserModel {
  static const tableName = "users";

  String? uid;
  String? name;
  String? email;
  String? password;
  String? confirmPassword;
  String? image;

  UserModel({
    this.uid,
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
    this.image,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map["uid"] ?? "",
      name: map["name"] ?? "",
      email: map["email"] ?? "",
      password: map["password"] ?? "",
      confirmPassword: map["confirmPassword"] ?? "",
      image: map["image"] ?? "",
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "name": name,
      "email": email,
      "password": password,
      "confirmPassword": confirmPassword,
      "image": image,
    };
  }
}
