class Houses {
  int id;
  String price;
  String status;
  String state;
  String lga;
  String landmark;
  String title;
  String bedroom;
  String bathroom;
  String streetName;
  String city;
  dynamic latitude;
  dynamic longititude;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;

  Houses({
    required this.id,
    required this.price,
    required this.status,
    required this.state,
    required this.lga,
    required this.landmark,
    required this.title,
    required this.bedroom,
    required this.bathroom,
    required this.streetName,
    required this.city,
    required this.latitude,
    required this.longititude,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "price": price,
        "status": status,
        "state": state,
        "LGA": lga,
        "landmark": landmark,
        "title": title,
        "bedroom": bedroom,
        "bathroom": bathroom,
        "streetName": streetName,
        "city": city,
        "latitude": latitude,
        "longititude": longititude,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
      };

  factory Houses.fromJson(Map<String, dynamic> json) => Houses(
        id: json["id"],
        price: json["price"],
        status: json["status"],
        state: json["state"],
        lga: json["LGA"],
        landmark: json["landmark"],
        title: json["title"],
        bedroom: json["bedroom"],
        bathroom: json["bathroom"],
        streetName: json["streetName"],
        city: json["city"],
        latitude: json["latitude"],
        longititude: json["longititude"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
      );
}
