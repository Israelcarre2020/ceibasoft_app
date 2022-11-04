class GenerateTokenRequestModel {
  final String user;
  final String password;
  final String grantType;
  final int date;

  GenerateTokenRequestModel({
    required this.user,
    required this.password,
    required this.grantType,
  }) : date = DateTime.now().millisecondsSinceEpoch;

  Map<String, dynamic> toJson() => {
        'user': user,
        'password': password,
        'grant_type': grantType,
        'date': date,
      };
}
