import 'package:flutter/material.dart';

class NavModel {
  String name;
  String? description;
  Widget navigator;
  Color? color;
  Color? color2;
  NavModel({
    required this.name,
    this.description,
    required this.navigator,
    this.color,
    this.color2,
  });
}
