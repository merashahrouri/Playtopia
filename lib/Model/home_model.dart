class HomeModel{

  String ? name ;
  String ? price;
  String ? image;
  HomeModel({
    this.name,
    this.price,
    this.image,
  });
  HomeModel.fromJson(Map<String,dynamic>json){
    name = json["name"];
    price =json["price"];
    image = json["image"];
  }
}
