class User {
  final String firstName;
  final String? lastName;
  final String email;
  final String? photo;
  final String role;
  final String? password;
  final String? passwordConfirm;
  final String? googleId;
  final int? phone;
  final int points;
  final DateTime? passwordChangedAt;
  final String? passwordResetToken;
  final DateTime? passwordResetExpires;
  final bool active;

  User({
    required this.firstName,
    this.lastName,
    required this.email,
    this.photo,
    this.role = 'user',
    this.password,
    this.passwordConfirm,
    this.googleId,
    this.phone,
    this.points = 0,
    this.passwordChangedAt,
    this.passwordResetToken,
    this.passwordResetExpires,
    this.active = true,
  });

  // Factory method to create a User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      photo: json['photo'],
      role: json['role'] ?? 'user',
      password: json['password'],
      passwordConfirm: json['passwordConfirm'],
      googleId: json['googleId'],
      phone: json['phone'],
      points: json['points'] ?? 0,
      passwordChangedAt: json['passwordChangedAt'] != null
          ? DateTime.parse(json['passwordChangedAt'])
          : null,
      passwordResetToken: json['passwordResetToken'],
      passwordResetExpires: json['passwordResetExpires'] != null
          ? DateTime.parse(json['passwordResetExpires'])
          : null,
      active: json['active'] ?? true,
    );
  }

  // Method to convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      if (lastName != null) 'lastName': lastName,
      'email': email,
      if (photo != null) 'photo': photo,
      'role': role,
      if (password != null) 'password': password,
      if (passwordConfirm != null) 'passwordConfirm': passwordConfirm,
      if (googleId != null) 'googleId': googleId,
      if (phone != null) 'phone': phone,
      'points': points,
      if (passwordChangedAt != null) 'passwordChangedAt': passwordChangedAt!.toIso8601String(),
      if (passwordResetToken != null) 'passwordResetToken': passwordResetToken,
      if (passwordResetExpires != null) 'passwordResetExpires': passwordResetExpires!.toIso8601String(),
      'active': active,
    };
  }
}
