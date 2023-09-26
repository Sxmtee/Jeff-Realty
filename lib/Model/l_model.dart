class Land {
  int id;
  LandAttributes attributes;

  Land({
    required this.id,
    required this.attributes,
  });

  factory Land.fromJson(Map<String, dynamic> json) => Land(
        id: json["id"],
        attributes: LandAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class LandAttributes {
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
  Images images;

  LandAttributes({
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
    required this.images,
  });

  factory LandAttributes.fromJson(Map<String, dynamic> json) => LandAttributes(
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
        images: Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
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
        "images": images.toJson(),
      };
}

class Images {
  List<Datum> data;

  Images({
    required this.data,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  DatumAttributes attributes;

  Datum({
    required this.id,
    required this.attributes,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        attributes: DatumAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class DatumAttributes {
  String name;
  dynamic alternativeText;
  dynamic caption;
  int width;
  int height;
  Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  dynamic previewUrl;
  String provider;
  ProviderMetadata providerMetadata;
  DateTime createdAt;
  DateTime updatedAt;

  DatumAttributes({
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    required this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.previewUrl,
    required this.provider,
    required this.providerMetadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DatumAttributes.fromJson(Map<String, dynamic> json) =>
      DatumAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: ProviderMetadata.fromJson(json["provider_metadata"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata.toJson(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

class Formats {
  Small thumbnail;
  Small small;

  Formats({
    required this.thumbnail,
    required this.small,
  });

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: Small.fromJson(json["thumbnail"]),
        small: Small.fromJson(json["small"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
        "small": small.toJson(),
      };
}

class Small {
  String name;
  String hash;
  String ext;
  String mime;
  dynamic path;
  int width;
  int height;
  double size;
  String url;
  ProviderMetadata providerMetadata;

  Small({
    required this.name,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.path,
    required this.width,
    required this.height,
    required this.size,
    required this.url,
    required this.providerMetadata,
  });

  factory Small.fromJson(Map<String, dynamic> json) => Small(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        providerMetadata: ProviderMetadata.fromJson(json["provider_metadata"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "path": path,
        "width": width,
        "height": height,
        "size": size,
        "url": url,
        "provider_metadata": providerMetadata.toJson(),
      };
}

class ProviderMetadata {
  String publicId;
  String resourceType;

  ProviderMetadata({
    required this.publicId,
    required this.resourceType,
  });

  factory ProviderMetadata.fromJson(Map<String, dynamic> json) =>
      ProviderMetadata(
        publicId: json["public_id"],
        resourceType: json["resource_type"],
      );

  Map<String, dynamic> toJson() => {
        "public_id": publicId,
        "resource_type": resourceType,
      };
}
