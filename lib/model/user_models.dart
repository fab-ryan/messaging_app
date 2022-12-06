class UserModel {
  int id;
  String name;
  String email;
  UserModel({required this.id, required this.name, required this.email});
  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        name: json['name'],
        email: json["email"],
      );
}
