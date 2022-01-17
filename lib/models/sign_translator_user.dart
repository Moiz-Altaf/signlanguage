class SigntranslatorUser {
  final String email;
  final String name;

  SigntranslatorUser({required this.email, required this.name});

  factory SigntranslatorUser.fromJson(Map<String, dynamic> json) =>
      SigntranslatorUser(email: json['email'], name: json['name']);

  Map<String, dynamic> toJson() => {
        "email": email,
        "name": name,
      };
}
