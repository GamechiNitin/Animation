// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_console/ui/screen/animation/ui/button_screen.dart';
import 'package:flutter_console/ui/screen/animation/ui/color_gen_screen.dart';

class AnimationModel {
  String name;
  String description;
  Widget navigator;
  Color? color;
  AnimationModel({
    required this.name,
    required this.description,
    required this.navigator,
    this.color,
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

List<AnimationModel> animationList = [
  AnimationModel(
    name: 'Color Pallete',
    description: 'Colors Pallete animation',
    color: fetchColor(),
    navigator: const ColorGenScreen(),
  ),
  AnimationModel(
    name: 'Button Animation',
    description: 'Button Animation : Cart',
    color: fetchColor(),
    navigator: const ButtonScreen(),
  ),
];
