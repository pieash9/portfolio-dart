import 'package:flutter/material.dart';
import 'package:portfolio/extensions.dart';
import 'package:portfolio/routes/app_route.dart';

class AppMenuList {
  static List<AppMenu> getItems(BuildContext context) {
    return [
      AppMenu(title: context.texts.home, path: Routes.home),
      AppMenu(title: context.texts.courses, path: Routes.courses),
      AppMenu(title: context.texts.blog, path: Routes.blog),
      AppMenu(title: context.texts.aboutMe, path: Routes.about),
    ];
  }
}

class AppMenu {
  final String title;
  final String path;

  AppMenu({required this.title, required this.path});
}
