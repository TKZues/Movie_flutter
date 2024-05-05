class LoginAccount{
  final int? id;
  final String fullName;
  final String emailAddress;
  final String password;
  final String confirmPassword;
  LoginAccount({required this.fullName, required this.emailAddress, required this.password, required this.confirmPassword, this.id});

  factory LoginAccount.fromJson(Map<String, dynamic >json) => LoginAccount(
    id: json['id'],
      fullName: json['fullName'],
      emailAddress: json['emailAddress'],
      password: json['password'],
      confirmPassword: json['confirmPassword']
  );

  Map<String, dynamic> toJson() =>{
    'id' : id,
    'fullName' : fullName,
    'emailAddress' : emailAddress,
    'password' : password,
    'confirmPassword' : confirmPassword,
  };

}