class User {
  final String name;

  User({this.name = "test"});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String,
      // profile:
      //     json['profile'] == null ? null : Profile.fromJson(json['profile']),
    );
  }
}
