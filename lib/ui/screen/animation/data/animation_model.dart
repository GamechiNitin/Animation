// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
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

List<AnimationModel> animationList = [
  AnimationModel(
    name: 'Color Pallete',
    description: 'Colors Pallete animation',
    color: Colors.black12,
    navigator: const ColorGenScreen(),
  )
];
