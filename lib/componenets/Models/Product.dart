import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "dummyText",
    image: "https://www.parisinfo.com/var/otcp/sites/images/media/1.-photos/03.-hebergement-630-x-405/hotel-enseigne-neon-630x405-c-thinkstock/31513-1-fre-FR/Hotel-enseigne-neon-630x405-C-Thinkstock.jpg",
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 234,
    size: 8,
    description: "dummyText",
    image: "https://cdn.icon-icons.com/icons2/1261/PNG/512/1496676733-rounded-high-ultra-colour09-soccer-pitch_84623.png",
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 234,
    size: 10,
    description: "dummyText",
    image: "https://cdn.icon-icons.com/icons2/1261/PNG/512/1496676733-rounded-high-ultra-colour09-soccer-pitch_84623.png",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 234,
    size: 11,
    description: "dummyText",
    image: "https://cdn.icon-icons.com/icons2/1261/PNG/512/1496676733-rounded-high-ultra-colour09-soccer-pitch_84623.png",
  ),
  Product(
    id: 5,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "dummyText",
    image: "https://cdn.icon-icons.com/icons2/1261/PNG/512/1496676733-rounded-high-ultra-colour09-soccer-pitch_84623.png",
  ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: "dummyText",
    image: "https://cdn.icon-icons.com/icons2/1261/PNG/512/1496676733-rounded-high-ultra-colour09-soccer-pitch_84623.png",
  ),
];
