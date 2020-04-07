// User Model
class UserModel {
  final String firstName, lastName, email, phone, bio, avatar, job;
  const UserModel(this.firstName, this.lastName, this.email, this.phone, this.bio,
      this.avatar, this.job);

  UserModel.fromJson(Map<String, dynamic> json)
      : this.firstName = json['firstName'],
        this.lastName = json['lastName'],
        this.email = json['email'],
        this.phone = json['phone'],
        this.bio = json['bio'],
        this.avatar = json['avatar'],
        this.job = json['job'];

  Map<String, dynamic> toJson() => {
        "firstName": this.firstName,
        "lastName": this.lastName,
        "email,": this.email,
        "phone": this.phone,
        "bio": this.bio,
        "avatar,": this.avatar,
        "job,": this.job
      };
}
