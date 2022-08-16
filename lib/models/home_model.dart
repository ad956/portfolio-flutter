import 'dart:convert';

import 'package:flutter/foundation.dart';

class HomeModel {
  final List<Product> products;
  HomeModel({
    required this.products,
  });

  HomeModel copyWith({
    List<Product>? products,
  }) {
    return HomeModel(
      products: products ?? this.products,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'products': products.map((x) => x.toMap()).toList(),
    };
  }

  factory HomeModel.fromMap(Map<String, dynamic> map) {
    return HomeModel(
      products: List<Product>.from(
        (map['products'] as List<int>).map<Product>(
          (x) => Product.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory HomeModel.fromJson(String source) =>
      HomeModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'HomeModel(products: $products)';

  @override
  bool operator ==(covariant HomeModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.products, products);
  }

  @override
  int get hashCode => products.hashCode;
}

class Product {
  final int id;
  final String name;
  final String desc;
  final int price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String img;
  final List<String> images;
  Product({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.img,
    required this.images,
  });

  Product copyWith({
    int? id,
    String? name,
    String? desc,
    int? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    String? brand,
    String? category,
    String? img,
    List<String>? images,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      price: price ?? this.price,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      rating: rating ?? this.rating,
      stock: stock ?? this.stock,
      brand: brand ?? this.brand,
      category: category ?? this.category,
      img: img ?? this.img,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'desc': desc,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'stock': stock,
      'brand': brand,
      'category': category,
      'img': img,
      'images': images,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
        id: map['id'].toInt() as int,
        name: map['name'] as String,
        desc: map['desc'] as String,
        price: map['price'].toInt() as int,
        discountPercentage: map['discountPercentage'].toDouble() as double,
        rating: map['rating'].toDouble() as double,
        stock: map['stock'].toInt() as int,
        brand: map['brand'] as String,
        category: map['category'] as String,
        img: map['img'] as String,
        images: List<String>.from(
          (map['images'] as List<String>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(id: $id, name: $name, desc: $desc, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, category: $category, img: $img, images: $images)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.desc == desc &&
        other.price == price &&
        other.discountPercentage == discountPercentage &&
        other.rating == rating &&
        other.stock == stock &&
        other.brand == brand &&
        other.category == category &&
        other.img == img &&
        listEquals(other.images, images);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        desc.hashCode ^
        price.hashCode ^
        discountPercentage.hashCode ^
        rating.hashCode ^
        stock.hashCode ^
        brand.hashCode ^
        category.hashCode ^
        img.hashCode ^
        images.hashCode;
  }
}
