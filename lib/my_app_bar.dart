import 'package:flutter/material.dart';
import 'package:portfolio/extensions.dart';
import 'package:portfolio/l10n/app_localizations.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppLogo(),
        Spacer(),
        AppMenus(),
        Spacer(),
        LanguageToggle(),
        ThemeToggle(),
      ],
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Portfolio", style: context.textStyle.titleLgBold);
  }
}

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(context.texts.home),
        Text(context.texts.courses),
        Text(context.texts.blog),
        Text(context.texts.aboutMe),
      ],
    );
  }
}

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(child: Text("English"), value: "en"),
          PopupMenuItem(child: Text("فارسی"), value: "fa"),
        ];
      },
    );
  }
}

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: (value) {});
  }
}
