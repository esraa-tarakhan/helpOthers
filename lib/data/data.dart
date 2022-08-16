// enum AnimalType { land, air }

import 'package:flutter/material.dart';

class Animal {
  final String imageUrl;
  final int id;

  // final AnimalType type;

  Animal({
    this.imageUrl,
    this.id,
    // this.type,
  });
}

class Dragg {
  final Image imageUrl;
  final int id;

  // final AnimalType type;

  Dragg({
    this.imageUrl,
    this.id,
    // this.type,
  });
}
final emptypic= [Animal(
  // type: AnimalType.land,
  imageUrl: 'assets/animal1.png',
)];


final allAnimals = [
  Animal(
    // type: AnimalType.land,
    id:0,
    imageUrl: 'assets/animal1.png',
  ),
  Animal(
    id:1,

    // type: AnimalType.air,
    imageUrl: 'assets/bird1.png',
  ),
  Animal(
    id:2,

    // type: AnimalType.air,
    imageUrl: 'assets/bird2.png',
  ),
  Animal(
    id:3,

    // type: AnimalType.land,
    imageUrl: 'assets/animal2.png',
  ),
  Animal(
    id:3,

    // type: AnimalType.air,
    imageUrl: 'assets/bird3.png',
  ),
  Animal(
    id:4,

    // type: AnimalType.land,
    imageUrl: 'assets/animal3.png',
  ),
];
