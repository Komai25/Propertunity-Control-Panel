// To parse this JSON data, do
//
//     final pendingPosts = pendingPostsFromJson(jsonString);

import 'dart:convert';

PendingPosts pendingPostsFromJson(String str) =>
    PendingPosts.fromJson(json.decode(str));

String pendingPostsToJson(PendingPosts data) => json.encode(data.toJson());

class PendingPosts {
  List<Post>? rentPosts;
  List<Post>? salePosts;

  PendingPosts({
    this.rentPosts,
    this.salePosts,
  });

  factory PendingPosts.fromJson(Map<String, dynamic> json) => PendingPosts(
        rentPosts: json["rent_posts"] == null
            ? []
            : List<Post>.from(json["rent_posts"]!.map((x) => Post.fromJson(x))),
        salePosts: json["sale_posts"] == null
            ? []
            : List<Post>.from(json["sale_posts"]!.map((x) => Post.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "rent_posts": rentPosts == null
            ? []
            : List<dynamic>.from(rentPosts!.map((x) => x.toJson())),
        "sale_posts": salePosts == null
            ? []
            : List<dynamic>.from(salePosts!.map((x) => x.toJson())),
      };
}

class Post {
  int? id;
  int? userId;
  int? viewPlanId;
  int? propertyId;
  int? monthlyRent;
  int? maxDuration;
  int? visibility;
  dynamic approval;
  String? rejectionPurpose;
  DateTime? createdAt;
  DateTime? updatedAt;
  Property? property;
  List<dynamic>? rating;
  String? posttype;
  int? price;

  Post({
    this.id,
    this.userId,
    this.viewPlanId,
    this.propertyId,
    this.monthlyRent,
    this.maxDuration,
    this.visibility,
    this.approval,
    this.rejectionPurpose,
    this.createdAt,
    this.updatedAt,
    this.property,
    this.rating,
    this.posttype,
    this.price,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        userId: json["user_id"],
        viewPlanId: json["view_plan_id"],
        propertyId: json["property_id"],
        monthlyRent: json["monthly_rent"],
        maxDuration: json["max_duration"],
        visibility: json["visibility"],
        approval: json["approval"],
        rejectionPurpose: json["rejection_purpose"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        property: json["property"] == null
            ? null
            : Property.fromJson(json["property"]),
        rating: json["rating"] == null
            ? []
            : List<dynamic>.from(json["rating"]!.map((x) => x)),
        posttype: json["posttype"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "view_plan_id": viewPlanId,
        "property_id": propertyId,
        "monthly_rent": monthlyRent,
        "max_duration": maxDuration,
        "visibility": visibility,
        "approval": approval,
        "rejection_purpose": rejectionPurpose,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "property": property?.toJson(),
        "rating":
            rating == null ? [] : List<dynamic>.from(rating!.map((x) => x)),
        "posttype": posttype,
        "price": price,
      };
}

class Property {
  int? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? userId;
  String? name;
  double? latitude;
  double? longitude;
  String? address;
  String? about;
  dynamic the360View;
  int? area;
  String? categoryType;
  int? categoryId;
  int? imageCount;
  List<dynamic>? imageUrls;
  int? roomCount;
  int? bathroomCount;
  int? kitchenCount;
  int? storey;
  int? balkony;
  int? parking;
  int? securityCameras;
  int? elevator;
  int? wiFi;
  int? securityGard;
  Category? category;

  Property({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.userId,
    this.name,
    this.latitude,
    this.longitude,
    this.address,
    this.about,
    this.the360View,
    this.area,
    this.categoryType,
    this.categoryId,
    this.imageCount,
    this.imageUrls,
    this.roomCount,
    this.bathroomCount,
    this.kitchenCount,
    this.storey,
    this.balkony,
    this.parking,
    this.securityCameras,
    this.elevator,
    this.wiFi,
    this.securityGard,
    this.category,
  });

  factory Property.fromJson(Map<String, dynamic> json) => Property(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        userId: json["user_id"],
        name: json["name"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        address: json["address"],
        about: json["about"],
        the360View: json["360_view"],
        area: json["area"],
        categoryType: json["category_type"],
        categoryId: json["category_id"],
        imageCount: json["image_count"],
        imageUrls: json["image_urls"] == null
            ? []
            : List<dynamic>.from(json["image_urls"]!.map((x) => x)),
        roomCount: json["room_count"],
        bathroomCount: json["bathroom_count"],
        kitchenCount: json["kitchen_count"],
        storey: json["storey"],
        balkony: json["balkony"],
        parking: json["parking"],
        securityCameras: json["security_cameras"],
        elevator: json["elevator"],
        wiFi: json["Wi-Fi"],
        securityGard: json["security_gard"],
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "user_id": userId,
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
        "address": address,
        "about": about,
        "360_view": the360View,
        "area": area,
        "category_type": categoryType,
        "category_id": categoryId,
        "image_count": imageCount,
        "image_urls": imageUrls == null
            ? []
            : List<dynamic>.from(imageUrls!.map((x) => x)),
        "room_count": roomCount,
        "bathroom_count": bathroomCount,
        "kitchen_count": kitchenCount,
        "storey": storey,
        "balkony": balkony,
        "parking": parking,
        "security_cameras": securityCameras,
        "elevator": elevator,
        "Wi-Fi": wiFi,
        "security_gard": securityGard,
        "category": category?.toJson(),
      };
}

class Category {
  int? id;
  int? roomCount;
  int? bathroomCount;
  int? kitchenCount;
  int? storey;
  int? balkony;
  int? parking;
  int? securityCameras;
  int? elevator;
  int? wiFi;
  int? securityGard;
  DateTime? createdAt;
  DateTime? updatedAt;

  Category({
    this.id,
    this.roomCount,
    this.bathroomCount,
    this.kitchenCount,
    this.storey,
    this.balkony,
    this.parking,
    this.securityCameras,
    this.elevator,
    this.wiFi,
    this.securityGard,
    this.createdAt,
    this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        roomCount: json["room_count"],
        bathroomCount: json["bathroom_count"],
        kitchenCount: json["kitchen_count"],
        storey: json["storey"],
        balkony: json["balkony"],
        parking: json["parking"],
        securityCameras: json["security_cameras"],
        elevator: json["elevator"],
        wiFi: json["Wi-Fi"],
        securityGard: json["security_gard"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "room_count": roomCount,
        "bathroom_count": bathroomCount,
        "kitchen_count": kitchenCount,
        "storey": storey,
        "balkony": balkony,
        "parking": parking,
        "security_cameras": securityCameras,
        "elevator": elevator,
        "Wi-Fi": wiFi,
        "security_gard": securityGard,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
