import 'package:flutter_console/core/helper/helper.dart';
import 'package:flutter_console/core/model/nav_model.dart';
import 'package:flutter_console/ui/screen/widget/loading/ui/loading_screen_1.dart';

List<NavModel> loadingList = [
  NavModel(
    name: 'Loading',
    color: fetchColor(),
    color2: fetchColor(),
    navigator: const LoadingScreen1(),
  ),
];
