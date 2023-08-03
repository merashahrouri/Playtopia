class ItemsModel{

  late final String ? name;
  late final String ? price;
  late final String ? image;


  ItemsModel({this.name,this.price,this.image,});

  ItemsModel.fromJson(Map<String,dynamic>json){
    name=json["name"];
    price=json["price"];
    image=json["image"];
  }
  @override
  List<Object?> get props => [name, price, image];
}