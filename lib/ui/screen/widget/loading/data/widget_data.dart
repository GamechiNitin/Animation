// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_console/core/helper/helper.dart';
import 'package:flutter_console/core/model/nav_model.dart';
import 'package:flutter_console/ui/screen/widget/widget_list_screen.dart';

List<NavModel> widgetList = [
  NavModel(
    name: 'Loading',
    color: fetchColor(),
    color2: fetchColor(),
    navigator: const LoadingScreen(),
  ),
];
