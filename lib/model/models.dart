class DataModels {
  String name;
  String img;
  int price;
  int people;
  int star;
  String description;
  String location;
  DataModels({
    required this.name,
    required this.img,
    required this.price,
    required this.description,
    required this.location,
    required this.people,
    required this.star,
  });

  factory DataModels.fromJson(Map<String, dynamic> data) {
    return DataModels(
      name: data["name"],
      img: data['img'],
      price: data['price'],
      description: data['description'],
      location: data['location'],
      people: data['people'],
      star: data['star'],
    );
  }
}
