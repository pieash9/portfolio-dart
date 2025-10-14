import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/constants/app_icon.dart';
import 'package:portfolio/extensions.dart';
import 'package:portfolio/widgets/seo_text.dart';

class LanguageSwitch extends StatelessWidget {
  const LanguageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: PopupLanguageSwitchItem(
              language: "English",
              icon: AppIcon.us,
            ),
          ),
          PopupMenuItem(
            child: PopupLanguageSwitchItem(language: "فارسی", icon: AppIcon.ir),
          ),
        ];
      },
      child: Row(
        children: [
          Icon(Icons.language, color: context.colorSchema.onBackground),
          const Gap(4),
          SEOText(
            Localizations.localeOf(context).languageCode == "en" ? "EN" : "FA",
          ),
        ],
      ),
    );
  }
}

class PopupLanguageSwitchItem extends StatelessWidget {
  const PopupLanguageSwitchItem({
    super.key,
    required this.language,
    required this.icon,
  });

  final String language;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 18,
          height: 18,
          // colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
        const Gap(8),
        SEOText(language),
      ],
    );
  }
}
