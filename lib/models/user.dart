class User {
  String name;
  int first;
  int second;
  int third;
  User({this.name, this.first, this.second, this.third});

  // factory User.fromJson(Map<String, dynamic> json) {
  //   return User(
  //     name: json['name'] as String,
  //     // profile:
  //     //     json['profile'] == null ? null : Profile.fromJson(json['profile']),
  //   );
  // }
}
