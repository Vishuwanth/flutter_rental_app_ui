import 'package:flutter/material.dart';

class CategoryIcons {
  String name;
  String name1;
  IconData icon;

  CategoryIcons({required this.name, required this.name1, required this.icon});

  static List<CategoryIcons> generateIcons() {
    return [
      CategoryIcons(
          name: "5 BedRoom", name1: "3 Master Room", icon: Icons.bed_outlined),
      CategoryIcons(
          name: "5 BathRoom", name1: "3 Toilet", icon: Icons.bathroom_outlined),
      CategoryIcons(
          name: "2 Kitchen", name1: "120 Sq.ft", icon: Icons.kitchen_outlined),
      CategoryIcons(
          name: "2 Parking",
          name1: "180 Sq.ft",
          icon: Icons.local_parking_outlined),
    ];
  }
}
