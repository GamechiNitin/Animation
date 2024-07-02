// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_console/ui/screen/animation/ui/button_screen.dart';
import 'package:flutter_console/ui/screen/animation/ui/color_gen_screen.dart';
import 'package:flutter_console/ui/screen/animation/ui/glow_screen.dart';

class AnimationModel {
  String name;
  String description;
  Widget navigator;
  Color? color;
  Color? color2;
  AnimationModel({
    required this.name,
    required this.description,
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

List<AnimationModel> animationList = [
  AnimationModel(
    name: 'Color Pallete',
    description: 'Animation Container',
    color: fetchColor(),
    color2: fetchColor(),
    navigator: const ColorGenScreen(),
  ),
  AnimationModel(
    name: 'Button Animation',
    description: 'Animation Container',
    color: fetchColor(),
    color2: fetchColor(),
    navigator: const ButtonScreen(),
  ),
  AnimationModel(
    name: 'Glow Animation',
    description: 'Tween Animation ',
    color: fetchColor(),
    color2: fetchColor(),
    navigator: const GlowScreen(),
  ),
];
