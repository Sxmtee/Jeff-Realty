class Lands {
  int id;
  String title;
  String price;
  String state;
  String lga;
  String landmark;
  String city;
  String streetName;
  bool cofO;
  String landSize;
  dynamic latitude;
  dynamic longititude;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;

  Lands({
    required this.id,
    required this.title,
    required this.price,
    required this.state,
    required this.lga,
    required this.landmark,
    required this.city,
    required this.streetName,
    required this.cofO,
    required this.landSize,
    required this.latitude,
    required this.longititude,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "state": state,
        "LGA": lga,
        "landmark": landmark,
        "city": city,
        "streetName": streetName,
        "CofO": cofO,
        "landSize": landSize,
        "latitude": latitude,
        "longititude": longititude,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
      };

  factory Lands.fromJson(Map<String, dynamic> json) => Lands(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        state: json["state"],
        lga: json["LGA"],
        landmark: json["landmark"],
        city: json["city"],
        streetName: json["streetName"],
        cofO: json["CofO"],
        landSize: json["landSize"],
        latitude: json["latitude"],
        longititude: json["longititude"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
      );
}
