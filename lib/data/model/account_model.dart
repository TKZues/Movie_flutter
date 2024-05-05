class Account{
  final int? id;
  final String email;
  final String password;
  Account({required this.email, required this.password, this.id});

  factory Account.fromJson(Map<String, dynamic >json) => Account(
      id: json['id'],
      email: json['email'],
      password: json['password']
  );

  Map<String, dynamic> toJson() =>{
    'id' : id,
    'email' : email,
    'password' : password,
  };

}