// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  String? id;
  String fullName;
  String userName;
  String? email;
  String? password;
  UserModel(
      {this.password,
      required this.fullName,
      this.id,
      required this.userName,
      this.email});
  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
      password: map["password"] as String,
      fullName: map["fullName"] as String,
      userName: map["userName"] as String);
  Map<String, dynamic> toMap() =>
      {"password": password, "fullName": fullName, "userName": userName};

  UserModel copyWith({
    String? id,
    String? fullName,
    String? userName,
    String? password,
  }) {
    return UserModel(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      userName: userName ?? this.userName,
      password: password ?? this.password,
    );
  }
}
