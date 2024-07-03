// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_console/ui/screen/screen/auth/login/login_screen.dart';
import 'package:flutter_console/ui/screen/screen/list/list_screen.dart';

class ScreenModel {
  String name;
  String? description;
  Widget navigator;
  Color? color;
  Color? color2;
  ScreenModel({
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

List<ScreenModel> screenList = [
  ScreenModel(
    name: 'LogIn Screen',
    // description: '',
    color: fetchColor(),
    color2: fetchColor(),
    navigator: const LogInScreen(),
  ),
  ScreenModel(
    name: 'SignUp Screen',
    // description: '',
    color: fetchColor(),
    color2: fetchColor(),
    navigator: const LogInScreen(),
  ),
  ScreenModel(
    name: 'List Screen',
    // description: '',
    color: fetchColor(),
    color2: fetchColor(),
    navigator: const ListScreen(),
  ),
];
