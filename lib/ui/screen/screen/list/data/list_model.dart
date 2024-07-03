// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_console/ui/screen/screen/list/list_screen_1.dart';

class ListModel {
  String name;
  String? description;
  Widget navigator;
  Color? color;
  Color? color2;
  ListModel({
    required this.name,
    this.description,
    required this.navigator,
    this.color,
    this.color2,
  });
}

Color fetchColor() {
  final rand = Random();
  return Color.fromRGBO(
    rand.nextInt(256),
    rand.nextInt(256),
    rand.nextInt(256),
    0.4,
  );
}

List<ListModel> listScreen = [
  ListModel(
    name: 'Listview Screen',
    description: 'Staggered Animation',
    color: fetchColor(),
    color2: fetchColor(),
    navigator: const ListScreen1(),
  ),
];
