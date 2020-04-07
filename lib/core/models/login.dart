// LoginModel Model
class LoginModel {
  final String username, password;
  const LoginModel(this.username, this.password);

  LoginModel.fromJson(Map<String, dynamic> json)
      : this.username = json['username'],
        this.password = json['password'];

  Map<String, dynamic> toJson() => {
        "username": this.username,
        "password": this.password,
      };
}
