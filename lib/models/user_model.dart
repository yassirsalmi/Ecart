class UserModel {
  String fullName;
  String email;
  String password;
  String role;
  String uuid;
  // String profilePictureUrl;

  UserModel({
    required this.fullName,
    required this.email,
    required this.password,
    required this.role,
    required this.uuid,
    // this.profilePictureUrl = '',
  });

  // Factory constructor for creating user object from JSON data
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      fullName: json['fullName'],
      email: json['email'],
      password: json['password'],
      role: json['role'],
      uuid: json['uuid'],
      // profilePictureUrl: json['profile_picture_url'] ?? '',
    );
  }

  // Method for converting user object to JSON data
  Map<String, dynamic> toJson() {
    return {
      'username': fullName,
      'email': email,
      'password': password,
      'role': role,
      'uuid': uuid,
      // 'profile_picture_url': profilePictureUrl,
    };
  }

  // Additional methods for authentication, updating profile, etc.
}
