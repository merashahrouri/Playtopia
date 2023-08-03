
class UserModel {
  String? name;
  String? phone;
  String? email;
  String? address;
  String? userid;
  UserModel({
    this.name,
    this.phone,
    this.email,
    this.address,
    this.userid
  });
  UserModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    phone = json["phone"];
    email = json["email"];
    address = json["address"];
    userid = json["userid"];
  }
}
